defmodule OpenFoodFacts.API.ProductResponse do
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
