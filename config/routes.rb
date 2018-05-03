Rails.application.routes.draw do
  resources :cases
  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  root 'cases#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
