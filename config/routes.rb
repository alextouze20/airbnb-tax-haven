Rails.application.routes.draw do
  devise_for :users
  root to: 'places#index'
  resources :places do
    resources :citizenships, only: [:show, :new, :create, :destroy]
    resources :reviews, only: [:new, :create, :destroy]
  end
  resources :profiles, only: [:edit, :update, :show]
  get '/quizz/:id', to: "places#quizz", as: "quizz"
end
