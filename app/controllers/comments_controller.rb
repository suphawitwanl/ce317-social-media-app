class CommentsController < ApplicationController
  before_action :set_post

  def create
    @post.comments.create(comment_params.merge(user: current_user))
    redirect_to root_path
  end

  def destroy
    @post.comments.find(params[:id]).destroy
    redirect_to root_path
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
