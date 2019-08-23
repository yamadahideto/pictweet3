Rails.application.routes.draw do

  devise_for :users
  root   'tweets#index'
  resources :tweets do
    resources :comments, only: [:create]
    collection do
      get "tweet_user_show/:id", to: 'users#tweet_user_show'
    end
  end
  resources :users, only: [:show]

end


