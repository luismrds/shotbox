class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    authorize! :index, @user, :message => 'Not authorized as an administrator.'
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def follow
    following = User.find(params[:following])
    current_user.follow!(following)
    redirect_to following
  end 

  def unfollow
    unfollowing = User.find(params[:unfollowing])
    current_user.unfollow!(unfollowing)
    redirect_to unfollowing
  end
end
