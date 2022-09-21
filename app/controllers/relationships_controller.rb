class RelationshipsController < ApplicationController
  def create
    follower = User.find(params[:user_id])
    following = current_user.relationships.new
    following.follower_id = follower.id
    following.save
    redirect_to request.referer
  end

  def destroy
    user = User.find(params[:user_id])
    following = current_user.relationships.find_by(follower_id: user.id)
    following.destroy
    redirect_to request.referer
  end

  def following
    @user = User.find(params[:user_id])
    @followings = @user.followings.all
  end

  def follower
    @user = User.find(params[:user_id])
    @followers = @user.followers.all
  end

end
