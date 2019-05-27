Rails.application.routes.draw do

  #devise_for :creators
  namespace :v1 do
    resources :autorecords, only: [:create]
    resources :trips, only: [:index]
    resources :automos, only: []
    resources :sessions, only: [:create, :destroy]
    resources :creators, only: [:create, :destroy]

  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
