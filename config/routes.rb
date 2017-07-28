Rails.application.routes.draw do
  
  root 'home#index'

  devise_for :users
  get '/' => 'home#index'

  post '/create_tweet' => 'home#create_tweet'
  post '/like' => 'home#like'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
