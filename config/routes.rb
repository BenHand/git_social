Rails.application.routes.draw do
  resources :comments
  resources :posts
  resources :forums
  devise_for :users
  root to: 'application#index'
end
