Rails.application.routes.draw do
  resources :breeders
  resources :hatcheries
  resources :blogs
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :articles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "articles#index"
end
