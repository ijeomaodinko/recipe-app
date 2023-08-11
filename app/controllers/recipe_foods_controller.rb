class RecipeFoodsController < ApplicationController
  def index
    @recipe_foods = RecipeFood.all
  end

  def new
    @foods = Food.all
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_food = RecipeFood.new
  
  end

  def create
    @foods = Food.all
    @recipe = Recipe.find(params[:recipe_id])  
    @recipe_food = @recipe.recipe_foods.new(recipe_food_params)
  
    if @recipe_food.save
      redirect_to recipe_path(@recipe) 
    else
      render :new, status: 'Error occurred with Recipe Food!'
    end
  end

  def destroy
    @recipe_food = RecipeFood.find(params[:id])
    @recipe_food.destroy
    redirect_to recipe_path(params[:recipe_id])
  end

  private

  def recipe_food_params
    params.require(:recipe_food).permit(:quantity, :food_id, :recipe_id)
  end
end
