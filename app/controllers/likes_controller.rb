class LikesController < ApplicationController
  before_action :set_post

  def create
    @post.likes.create(user: current_user)
    redirect_to root_path
  end

  def destroy
    @post.likes.find(params[:id]).destroy
    redirect_to root_path
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end
end
