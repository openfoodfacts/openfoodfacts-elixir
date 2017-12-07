defmodule OpenFoodFacts.API.Product do
  use OpenFoodFacts.API.Base

  alias OpenFoodFacts.API.{Ingredient, Product}

  defstruct [
    product_name: "",
    ingredients: []
  ]

  defmodule Response do
    alias OpenFoodFacts.API.Product

    defstruct [
      :status,
      :status_verbose,
      :code,
      :product,
    ]

    def decode_template() do
      %__MODULE__{
        product: Product.decode_template()
      }
    end
  end

  def process_response_body(body) do
    Poison.decode!(body, as: Response.decode_template())
  end

  def get(id), do: get(id, [], [])
  def get(id, headers, options) do
    super("/product/#{id}.json", headers, options)
  end

  def decode_template() do
    %__MODULE__{
      ingredients: [%Ingredient{}]
    }
  end
end
