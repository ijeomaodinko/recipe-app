class ShoppingListController < ApplicationController
  def index
    @user = current_user
    @list = []
    @total_amount = 0

    @user.recipes.each do |recipe|
      recipe.recipe_foods.includes(:food).each do |item|
        puts "Recipe Food: #{item.inspect}"
        difference = item.quantity - item.food.quantity
        if difference.positive?
          @list.push([item.food.name, difference, item.food.price * difference])
          @total_amount += item.food.price * difference
        end
        puts "@list: #{@list.inspect}"
        puts "@total_amount: #{@total_amount}"
      end
      puts "@list: #{@list.inspect}"
    end
  end
end
