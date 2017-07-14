class CommentsController < ApplicationController
  def index
    @comments = Post.find(params[:post_id]).comments
  end

  def show
    @comment = Comment.find(params[id])
  end
end