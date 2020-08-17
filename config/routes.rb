Rails.application.routes.draw do
  devise_for :users
  root to: 'places#index'
  resources :places do
    resources :citizenships, only: [:new, :create, :destroy]
  end
  resources :users, only: [:edit,:update, :destroy, :show]
end
