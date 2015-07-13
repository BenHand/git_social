Rails.application.routes.draw do
  # delete '/users/sign_out', to: 'devise/sessions#destroy', as: 'logout'
  resources :comments
  resources :posts
  resources :forums
  devise_for :users, :controllers => {
    :omniauth_callbacks => "users/omniauth_callbacks"
    }
  get '/users/profile/:id', to: 'users#profile_main', as: 'profile_main'
  root to: 'forums#index'
end
