Rails.application.routes.draw do
  root to: 'places#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :places
end
