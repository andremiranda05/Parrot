Rails.application.routes.draw do


  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers:{
    registrations: 'users/registrations'
  }
  resources :contato, only: [:new , :create]

  resources :events
  root 'home#index'
  get 'index' => 'home#index'
  get 'contato' =>'contato#contato'
  get 'sobre' => 'sobre#sobre'

  # For details on the DSL available within this file, see

end
