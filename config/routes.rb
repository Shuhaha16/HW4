Rails.application.routes.draw do
  resources :sessions
  resources :users
  resources :places
  resources :posts
  root to: "places#index"
end
