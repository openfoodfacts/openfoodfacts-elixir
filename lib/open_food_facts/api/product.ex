defmodule OpenFoodFacts.API.Product do
  use OpenFoodFacts.API.Base

  alias OpenFoodFacts.API.{Ingredient, ProductResponse}

  defstruct [
    product_name: "",
    ingredients: []
  ]

  def process_response_body(body) do
    Poison.decode!(body, as: ProductResponse.decode_template())
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
