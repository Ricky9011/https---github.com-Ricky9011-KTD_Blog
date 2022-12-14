Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/help'
  resources :breeders
  resources :hatcheries
  resources :blogs
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :articles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "articles#index"
end
