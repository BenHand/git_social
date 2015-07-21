Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :omniauth_callbacks => "users/omniauth_callbacks"
    }, :skip => [:passwords, :registrations]

  authenticate :user do
    resources :comments, :only => [:new, :create]
    resources :posts, :only => [:new, :create]
    resources :forums, :except => [:update, :destroy, :edit]
    get '/search', to: 'application#search_page', as: 'search_page'
    get '/search_results', to: 'application#search_results', as: 'search_results'
    post '/forums/new', to: 'forums#create', as: 'create_topic'
    post '/posts/new/:forum_id', to: 'posts#create', as: 'create_post'
    post '/comments/new/:post_id/:forum_id', to: 'comments#create', as: 'create_comment'
    get '/users/profile/activity/:id', to: 'users#profile_activity', as: 'activity'
    get '/users/profile/edit', to: 'users#edit_profile', as: 'edit_profile'
    put '/users/profile/update', to: 'users#update_profile', as: 'update_profile'
    get '/users/profile/:id', to: 'users#profile_main', as: 'profile_main'
  end

  root to: 'forums#index'
  get "*path", to: redirect('/')
end
