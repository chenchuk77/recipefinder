class RecipesControllerController < ApplicationController
  def index
  	@search_term = params[:search] || 'chocolate'
 	@recipes = Recipes.for(@search_term)

  end
end
