class CommentsController < ApplicationController
  def index
    @comments = Post.find(params[:post_id]).comments
  end

  def show
    @comment = Comment.find(params[id])
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.create(comment_param)
  end

  private
  def comment_param
    params.require(:comment).permit(:content, :user_id, :parent_comment_id, :post_id)
  end
end