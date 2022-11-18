class RecipeFood < ApplicationRecord
  attr_accessor :quantity_needed, :cost_required

  belongs_to :recipe
  belongs_to :food
  validates :quantity, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

 
end
