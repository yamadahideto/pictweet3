Rails.application.routes.draw do

  devise_for :users
  root  'tweets#index'
  get   'tweets/new'    => 'tweets#new'
  post  'tweets'        => 'tweets#create'
  get   'users/:id'     => 'users#show'
  delete 'tweets/:id'   => 'tweets#destroy'
end


