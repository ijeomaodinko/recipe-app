class InventoryFood < ApplicationRecord
  has_many :inventory, foreign_key: 'inventory_id'
  has_many :food, foreign_key: 'food_id'
end
