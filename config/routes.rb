Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :edit, :update]
  resources :top, only: [:index]
  resources :posts, only: [:index, :new, :create]
  root "top#index"
end
