class ShoppingListController < ApplicationController
  def index
    @user = current_user
    @foods = @user.foods.all
    @recipes = @user.recipes.all
    @list = []
    @recipes.each do |recipe|
      recipe.recipe_foods.includes([:food]).all.each do |item|
        difference = item.quantity - item.food.quantity
        @list.push([item.food.name, difference, item.food.price * difference]) if difference.positive?
      end
    end
    @total_amount = 0
    @list.each do |item|
      @total_amount += item[2]
    end
  end
end
