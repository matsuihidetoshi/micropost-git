class LikesController < ApplicationController
  before_action :require_user_logged_in

  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.like(micropost)
    flash[:success] = '投稿をお気に入りに追加しました。'
    redirect_to '/'
  end

  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.dislike(micropost)
    flash[:success] = ' 投稿のお気に入りを解除しました。'
    redirect_to '/'
  end
end