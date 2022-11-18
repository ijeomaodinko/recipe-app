# spec/factories.rb

FactoryBot.define do
  factory :recipe_food do
    
  end

  factory :recipe do
    
  end

  factory :food do
    
  end

    factory(:user) do
      email { Faker::Internet.email }
      password { Faker::Internet.password }
    end
  end