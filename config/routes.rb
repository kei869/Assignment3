Rails.application.routes.draw do

  devise_for :installs
  devise_for :users

  root to: 'homes#top'
  
  resources :books
  get "home/about" => "homes#about", as: "about"
  resources :users
  
end


