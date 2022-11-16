class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_foods

  validates :name, :preparation_time, :description, presence: true

  def total_cost
    total = 0
    recipe_foods.includes(:food).each do |recipe_food|
      total += recipe_food.quantity * recipe_food.food.price
    end
    total.round(2)
  end
  
end
