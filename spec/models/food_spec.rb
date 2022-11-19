require 'rails_helper'

RSpec.describe Food, type: :model do
  before(:each) do
    @user = User.new(name: 'enagr', email: 'enga@example.com', password: 'thanks',
                     password_confirmation: 'thanks')
    @food = Food.new(name: 'first food', measurement_unit: 10, price: 50, user_id: 1)
  end

  it 'should return name of user' do
    expect(@food.name).to eq('first food')
  end

  it 'measurement_unit should be present' do
    expect(@food.measurement_unit).to eq(10)
  end

  it 'should return the price of food' do
    expect(@food.price).to eq(50)
  end
end
