defmodule OpenFoodFacts.API.Search do
  use OpenFoodFacts.API.Base

  alias OpenFoodFacts.API.{Product, Ingredient}

  defmodule Response do
    defstruct [
      count: 0,
      page: 1,
      page_size: 20,
      skip: 0,
      products: []
    ]
  end

  def process_url(url) do
    @base_url <> url
  end

  def process_response_body(body) do
    Poison.decode!(body, as: %Response{
      products: [
        %Product{
          ingredients: [%Ingredient{}]
        }
      ]
    })
  end

  def search(term, options \\ []) do
    params = Keyword.merge(options, search_terms: term, json: 1)
    get("/cgi/search.pl", [], params: params)
  end
end
