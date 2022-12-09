Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'num_finder/input'
  get 'num_finder/output'
  root to: redirect('num_finder/input')
end
