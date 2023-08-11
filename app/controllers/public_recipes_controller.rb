class PublicRecipesController < ApplicationController
  def index
    @recipes = Recipe.where(public: true)
  end

  def destroy
    @recipe = Recipe.where(public: true).find(params[:id])
    @recipe.destroy

    respond_to do |format|
      format.html { redirect_to recipes_url, notice: 'Recipe was successfully destroyed.' }
    end
  end
end
