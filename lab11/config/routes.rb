Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'num_finder/input'
  get 'num_finder/output'
  get 'num_finder/xml'
  get 'num_finder/json'
  root to: redirect('num_finder/input')
end
