class FollowingRelationshipsController < ApplicationController
  def create
    user = User.find(params[:user_id])
    current_user.follow user
    redirect_to user
  end

  def destroy
    user = User.find(params[:user_id])
    current_user.unfollow user
    redirect_to user
  end

  private

  def user
    @_user ||= User.find(params[:user_id])
  end
end
