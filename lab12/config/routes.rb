Rails.application.routes.draw do
  get 'numfinder/input'
  get 'numfinder/output'
  get 'translate/input'
  get 'translate/output'
  get 'sessions/exit'
  get 'sessions/create'
  root 'sessions#new'
  get 'users/index'
  get 'users/new'
  get 'users/xml'
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
