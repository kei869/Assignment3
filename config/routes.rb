Rails.application.routes.draw do

  devise_for :installs
  devise_for :users

  root to: 'homes#top'
  
  resources :books, only:[:new, :create, :index, :show, :edit, :update, :destroy] do 
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end 
  
 
  get "home/about" => "homes#about", as: "about"
  resources :users
  
end


