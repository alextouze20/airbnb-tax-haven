Rails.application.routes.draw do
  root to: 'places#index'
  resources :places do
    resources :citizenships, only: [:new, :create, :destroy]
  end
end
