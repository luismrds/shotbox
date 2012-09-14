Rails3BootstrapDeviseCancan::Application.routes.draw do
  resources :comments 

  get "comments/create"

  get "comment/destroy"

  get "like/like"

  #resources :shots

  match "shots/like/:shot_id" => "shots#like", :as => :likeshot
  match "shots/dislike/:shot_id" => "shots#dislike", :as => :dislikeshot

  get "like/dislike"

  resources :shots

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users, :only => [:show, :index]
end
