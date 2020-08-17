Rails.application.routes.draw do
  root to: 'pages#home'
  resources :places do
    resources :citizenships, only: [:new, :create, :destroy]
  end
end
