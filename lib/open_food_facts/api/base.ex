defmodule OpenFoodFacts.API.Base do
  defmacro __using__(_) do
    quote do
      use unquote(Application.get_env(:open_food_facts, :api_client_base))

      @base_url "https://ssl-api.openfoodfacts.org"
      @base_api_url "#{@base_url}/api/v0"

      def process_url(url) do
        @base_api_url <> url
      end

      defoverridable [process_url: 1]
    end
  end
end
