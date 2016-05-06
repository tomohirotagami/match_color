Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :edit, :update]
  resources :tops, only: [:index, :new, :show]
  root "top#index"
end
