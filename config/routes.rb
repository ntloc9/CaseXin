Rails.application.routes.draw do
  resources :image_attachments
  # get 'order_items/create'
  #
  # get 'order_items/update'
  #
  # get 'order_items/destroy'
  #
  # get 'carts/show'

  resources :oplungs
  resources :order_items, only: [:create, :update, :destroy]
  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  root 'oplungs#index'
  get 'categories', to: 'oplungs#categories'

  resources :phones, only: [:index] do
    resources :phonemodels, only: [:index]
  end
  get '/cart', to: 'order_items#index'

  resources :order_items, path: '/cart/items'

  get 'cart/checkout', to: 'orders#new', as: :checkout
  patch 'cart/checkout', to: 'orders#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
