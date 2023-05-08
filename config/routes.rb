Rails.application.routes.draw do
  devise_for :users
  resources :products
  root 'pages#home'
  get 'pages/catering'
  get 'pages/info'
  get 'order_items/create'
  get 'order_items/update'
  get 'order_items/destory'
  get 'cart/show'
  resources :fruits
  # get 'home/index'
  # get 'posts/index'
  # get 'posts/new'
  # get 'posts/create'
  # get 'posts/show'
  # get 'posts/update'
  # get 'posts/delete'
  resources :cats
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "home#index"

  mount MusicStore::Base => '/'

end
