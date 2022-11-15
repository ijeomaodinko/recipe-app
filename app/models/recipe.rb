# frozen_string_literal: true

class Recipe < ApplicationRecord
  has_many :recipe_food, foreign_key: 'recipe_id'
  belongs_to :user, foreign_key: 'user_id'

  validates :name, :preparation_time, :desciption, presence: true
end
