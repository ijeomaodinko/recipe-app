# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, sign_out_via: [:get, :post]
  resources  :foods,:users,:public_recipes,:shopping_list
  resources :recipes do
    resources :recipe_foods, only: [:new, :create, :destroy]
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'recipes#index'
end
