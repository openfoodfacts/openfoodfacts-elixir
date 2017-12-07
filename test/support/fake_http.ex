defmodule FakeHTTP do
  alias OpenFoodFacts.API.Product

  defmacro __using__(_) do
    quote do
      def get(path, headers, options) do
        unquote(__MODULE__).get(path, headers, options)
      end

      defoverridable [get: 3]
    end
  end

  def start_link() do
    GenServer.start_link(__MODULE__, :ok, name: __MODULE__)
  end

  def init(:ok) do
    {:ok, %{}}
  end

  def stub(request_path, fixture) do
    GenServer.call(__MODULE__, {:stub, request_path, fixture})
  end

  def get(path, _, _) do
    GenServer.call(__MODULE__, {:get, path})
  end

  def handle_call({:stub, path, fixture}, _from, data) do
    body = File.read!("test/fixtures/#{fixture}.json")
    data = Map.put(data, path, body)
    {:reply, :ok, data}
  end

  def handle_call({:get, path}, _, data) do
    body = Map.get(data, path)
    resp = %HTTPoison.Response{
      body: Poison.decode!(body, as: Product.Response.decode_template())
    }
    {:reply, {:ok, resp}, data}
  end
end
