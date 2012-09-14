Rails3BootstrapDeviseCancan::Application.routes.draw do
  resources :comments 

  get "comments/create"

  get "comment/destroy"

  get "like/like"

  #resources :shots
    
  match "shots/index/:user" => "shots#index", :as => :indexshots
  match "shots/like/:shot_id" => "shots#like", :as => :likeshot
  match "shots/dislike/:shot_id" => "shots#dislike", :as => :dislikeshot
  match "shots/add_tag" => "shots#add_tag", :as => :add_tag

  get "like/dislike"

  resources :shots

  match "users/follow/:following" => "users#follow", :as => :follow
  match "users/unfollow/:unfollowing" => "users#unfollow", :as => :unfollow

  authenticated :user do
    root :to => 'shots#index'
  end
  root :to => "shots#index"
  devise_for :users do
    get "/users/sign_out" => "devise/sessions#destroy", :as => :destroy_user_session
  end
  resources :users, :only => [:show, :index]
end

