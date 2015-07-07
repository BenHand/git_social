Rails.application.routes.draw do
  resources :comments
  resources :posts
  resources :forums
  devise_for :users, :controllers => {
    :omniauth_callbacks => "users/omniauth_callbacks"
    }

  devise_scope :user do
    get 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
  end

  root to: 'forums#index'
end
