Rails.application.routes.draw do
  # get 'order_items/create'
  #
  # get 'order_items/update'
  #
  # get 'order_items/destroy'
  #
  # get 'carts/show'

  resources :carts, only: [:show]
  resources :oplungs
  resources :order_items, only: [:create, :update, :destroy]
  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  root 'oplungs#index'
  get 'categories', to: 'oplungs#categories'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
