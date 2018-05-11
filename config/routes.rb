Rails.application.routes.draw do
  resources :line_items
  resources :carts
  resources :cases
  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  root 'cases#index'
  get 'categories', to: 'cases#categories'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
