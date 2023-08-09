class RecipeFoodsController < ApplicationController
  def index
    @recipe_foods = RecipeFood.all
  end

  def new
    @foods = Food.all
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_food = RecipeFood.new
    # @recipe_food = RecipeFood.new
    # @recipe = Recipe.find_by(id: params[:recipe_id])
    # @foods = current_user.foods
  end

  def create
    @foods = Food.all
    @recipe = Recipe.find(params[:recipe_id])  # Add this line to find the associated recipe
    @recipe_food = @recipe.recipe_foods.new(recipe_food_params)

    # @food = current_user.foods.new(food_params)
  
    if @recipe_food.save
      redirect_to recipe_path(@recipe)  # Use the correct path for the recipe
    else
      render :new, status: 'Error occurred with Recipe Food!'
    end
  end

  # def create
   
  #   # @recipe = current_user.recipes.find(params[:recipe_id])
  #   # @recipe_food = @recipe.recipe_foods.new(recipe_food_params)

  #   if @recipe_food.save
  #     redirect_to recipes_path(@recipe)
  #   else
  #     render :new, status: 'Error occured with Recipe Food!'
  #   end
  # end

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
