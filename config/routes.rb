Rails.application.routes.draw do
  resources :comments
  resources :posts
  resources :forums
  devise_for :users, :controllers => {
    :omniauth_callbacks => "users/omniauth_callbacks"
    }

  root to: 'forums#index'
end
