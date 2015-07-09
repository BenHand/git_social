Rails.application.routes.draw do
  resources :comments
  resources :posts
  resources :forums
  devise_for :users, :controllers => {
    :omniauth_callbacks => "users/omniauth_callbacks"
    }

  get '/users/:id', to: 'users#profile_main', as: 'profile_main'
  root to: 'forums#index'
end
