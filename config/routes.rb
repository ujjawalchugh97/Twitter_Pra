Rails.application.routes.draw do
  
  root 'home#index'

  devise_for :users
  get '/' => 'home#index'

  post '/create_tweet' => 'home#create_tweet'
  post '/like' => 'home#like'
  post '/follow' => 'home#follow'
  
  get '/home/users' => 'home#users'
  get '/home/followers' => 'home#followers'
  get '/home/followees' => 'home#followees'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
