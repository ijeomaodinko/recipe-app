require 'rails_helper'

RSpec.describe Recipe, type: :model do
  before(:each) do
    @user = User.new(name: 'Theresa', email: 'Theresa@example.com', password: 'thanks',
                     password_confirmation: 'thanks')
    @recipe = Recipe.new(name: 'testing', preparation_time: 1, cooking_time: 1, description: 'testing', public: true,
                         user: @user)
  end

  it 'name should be present' do
    @user.name = 'testing'
    expect(@user).to be_valid
  end

  it 'description should be present' do
    @recipe.description = nil
    expect(@recipe).to_not be_valid
  end
end
