Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root "top#index"
  resources :users, only: [:show, :edit, :update]
  resources :top, only: [:index]
  resources :posts, only: [:new, :create, :edit, :destroy, :update, :show]
end
