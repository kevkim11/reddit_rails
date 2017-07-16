class PostsController < ApplicationController
  def index
    @posts = Subreddit.find(params[:subreddit_id]).posts
  end

  def show
    @post = Post.find(params[:id])
    @vote = Vote.new
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    # @post.user = current_user

  end

  private
  def post_params
    params.require(:user).permit(:title, :post_type)
  end


end