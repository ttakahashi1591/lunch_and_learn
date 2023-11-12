require 'rails_helper'

RSpec.describe RecipeFacade do
  describe '#recipe_search' do
    it 'returns an array of Recipe objects' do
        country = "Japan"

        # Instantiate the facade
        recipe_facade = RecipeFacade.new(country)

        # Call the `members` method
        recipes = recipe_facade.recipe

        # Expect that members is an array of Member objects
        expect(recipes).to be_an(Array)
        expect(recipes.first).to be_a(Recipe)
    end
  end
end