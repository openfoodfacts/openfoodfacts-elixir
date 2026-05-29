# Open Food Facts for Elixir
![maintenance-status](https://img.shields.io/badge/maintenance-looking--for--maintainer-orange.svg)
Based on https://openfoodfacts.github.io/documentation/docs/Product-Opener/api/

## Description

This project aims to provide an Elixir library for seamless interaction with the Open Food Facts API. It will simplify the process of accessing and utilizing the wealth of food product data available on Open Food Facts, enabling developers to easily integrate this information into their Elixir applications.

## Features

Data Retrieval: Fetch data for individual products by barcode, name, or other identifiers.


## Potential Use Cases

* Food Tracking Apps: Build applications to help users track their food consumption, analyze nutritional intake, and make informed food choices.
* Recipe Recommendation Systems: Develop systems that suggest recipes based on available ingredients, dietary restrictions, and nutritional preferences, using Open Food Facts data to identify suitable products.
* Grocery Shopping Assistants: Create tools that assist users with grocery shopping by providing product information, comparing prices, and suggesting healthier alternatives.
* Research and Analysis: Utilize the Open Food Facts dataset for research purposes, such as analyzing food trends, studying the impact of food processing, or investigating the relationship between diet and health.

## Example Usage

### Fetch a product by barcode


### Search for products containing "chocolate"


### Update a product's information




## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `open_food_facts` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:open_food_facts, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/open_food_facts](https://hexdocs.pm/open_food_facts).

## Author

Andrea Franz (http://gravityblast.com)

## Contributors

[List of contributors](https://github.com/openfoodfacts/openfoodfacts-elixir/graphs/contributors)

## Using this SDK and Third party applications

- If you use this SDK, feel free to open a PR to add your application in the list in [REUSERS.md](https://github.com/openfoodfacts/openfoodfacts-elixir/blob/develop/REUSERS.md)
- Make sure you comply with the OdBL licence, mentioning the Source of your data, and ensuring to avoid combining non free data you can't release legally as open data. Another requirement is contributing back any product you add using this SDK.
- Please get in touch at reuse@openfoodfacts.org
- We are very interested in learning what the Open Food Facts data is used for. It is not mandatory, but we would very much appreciate it if you tell us about your re-uses (https://forms.gle/hwaeqBfs8ywwhbTg8) so that we can share them with the Open Food Facts community. You can also fill this form to get a chance to get your app featured: https://forms.gle/hwaeqBfs8ywwhbTg8
