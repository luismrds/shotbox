Rails3BootstrapDeviseCancan::Application.routes.draw do
  resources :comments 

  get "comments/create"

  get "comment/destroy"

  get "like/like"

  #resources :shots

  match "shots/like/:shot_id" => "shots#like", :as => :likeshot
  match "shots/dislike/:shot_id" => "shots#dislike", :as => :dislikeshot
  match "shots/add_tag" => "shots#add_tag", :as => :add_tag
  #match "shots/index_by_tag/:tag" => "shots#index_by_tag", :as => :index_by_tag

  get "like/dislike"

  resources :shots

  authenticated :user do
    root :to => 'shots#index'
  end
  root :to => "shot#index"
  devise_for :users
  resources :users, :only => [:show, :index]
end

