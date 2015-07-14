Rails.application.routes.draw do
  resources :comments
  resources :posts
  resources :forums
  devise_for :users, :controllers => {
    :omniauth_callbacks => "users/omniauth_callbacks"
    }
  post '/comments/new/:post_id/:forum_id', to: 'comments#create', as: 'create_comment'
  get '/users/profile/edit', to: 'users#edit_profile', as: 'edit_profile'
  put '/users/profile/update', to: 'users#update_profile', as: 'update_profile'
  get '/users/profile/:id', to: 'users#profile_main', as: 'profile_main'
  root to: 'forums#index'
end
