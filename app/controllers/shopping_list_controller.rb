class ShoppingListController < ApplicationController
  def index
    @user_recipes = current_user.recipes
  end
end
