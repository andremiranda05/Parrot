Rails.application.routes.draw do

  resources :event_places
  devise_for :users
  resources :events
  root 'home#index'
  get 'index' => 'home#index'
  get 'contato' =>'contato#contato'
  get 'sobre' => 'sobre#sobre'

  # For details on the DSL available within this file, see

end
