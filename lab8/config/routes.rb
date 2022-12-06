# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'num_finder/input'
  get 'num_finder/output'
  root to: redirect('num_finder/input')
  # Define your application routes per
  # Defines the root path route ("/")
  # root "articles#index"
end
