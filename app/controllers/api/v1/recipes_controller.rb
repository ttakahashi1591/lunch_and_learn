class Api::V1::RecipesController < ApplicationController
  def index
    @facade = RecipeFacade.new.recipe_search(params[:country])
    render json: RecipeSerializer.new(@facade) 
  end
end