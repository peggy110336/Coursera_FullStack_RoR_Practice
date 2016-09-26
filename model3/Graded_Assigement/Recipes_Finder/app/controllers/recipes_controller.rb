class RecipesController < ApplicationController
  def index
  	#check if a request parameter search was passed in
  	#if not,use 'chocolate' value to pass.
  	@search_term = params[:looking_for] || 'chocolate'
  	@recipes = Recipe.for(@search_term)
  end
end
