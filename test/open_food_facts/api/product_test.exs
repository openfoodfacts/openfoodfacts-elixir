defmodule OpenFoodFactsTest do
  use ExUnit.Case

  setup do
    FakeHTTP.start_link()
    {:ok, %{}}
  end

  describe "get" do
    test "returns a product" do
      FakeHTTP.stub("/product/1.json", "product_ok")
      assert {:ok, %HTTPoison.Response{body: body}} = OpenFoodFacts.API.Product.get("1")
      assert body.product.product_name == "Croque Monsieur Maxi"
    end
  end
end
