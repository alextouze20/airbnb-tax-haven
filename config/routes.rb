Rails.application.routes.draw do
  devise_for :users
  root to: 'places#index'
  resources :places do
    resources :citizenships, only: [:show, :new, :create, :destroy]
    resources :reviews, only: [:create, :destroy]
  end
  resources :users, only: [:edit,:update, :show]
end
