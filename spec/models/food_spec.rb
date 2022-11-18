require 'rails_helper'

RSpec.describe Food, type: :model do
  before(:each) do
    @user = User.new(name: 'enagr', email: 'enga@example.com', password: 'thanks',
                     password_confirmation: 'thanks')
    @food = Food.new(name: 'first food', measurement_unit: 10, price: 50, user: 1)
  end

  it 'should return name of user' do
    @user.name = 'enagr'
    expect(person).to receive(:name).and_return('enagr')
  end

  it 'measurement_unit should be present' do
    @food.measurement_unit = 10
    expect(@food).to be_valid
  end   
  
  it 'should return the price of food' do
    @food.price = 50
    expect(@food).to eq(50)
  end
end

