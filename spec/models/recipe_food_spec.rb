require 'rails_helper'
RSpec.describe RecipeFood, type: :model do
  subject { RecipeFood.new(quantity: 1.9, recipe_id: 1, food_id: 1) }

  before { subject.save }

  it 'should accept integer as food_id' do
    subject.food_id = nil
    expect(subject).to_not be_valid
  end

  it 'should accept integer as recipe_id' do
    subject.recipe_id = nil
    expect(subject).to_not be_valid
  end

  it 'should  return integer' do
    subject.quantity = nil
    expect(subject).to_not be_valid
  end
end

