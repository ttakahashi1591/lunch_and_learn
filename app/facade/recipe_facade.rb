class RecipeFacade
  # def initialize
  #   @recipe = RecipeService.new
  # end

  def recipe_search(country)
    data = RecipeService.new.recipe_search(country)

    data[:hits].map do |attributes|
      Recipe.new(attributes)
    end
  end
end