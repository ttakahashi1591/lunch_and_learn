require "rails_helper"

RSpec.describe Recipe do
  it "exists" do
    attributes = {
      id: nil,
      type: "recipe",
      title: "Chicken Katsu",
      url: "http://heaney.test/abram",
      country: "Japan",
      image: "http://lakin-stamm.test/caridad"
    }

    recipe = Recipe.new(attributes)

    expect(recipe).to be_a Recipe
    expect(recipe.id).to eq(nil)
    expect(recipe.type).to eq("recipe")
    expect(recipe.title).to eq("Chicken Katsu")
    expect(recipe.url).to eq("http://heaney.test/abram")
    expect(recipe.country).to eq("Japan")
    expect(recipe.image).to eq("http://lakin-stamm.test/caridad")
  end
end