class WelcomeController < ApplicationController
  def index
    @posts_all = Post.all

    if session[:user_id] != nil
      @posts_user = Post.where(user_id: session[:user_id])
    end
  end
end
