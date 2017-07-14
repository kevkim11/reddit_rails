class PostsController < ApplicationController
  def index
    @posts = Subreddit.find(params[:subreddit_id]).posts
  end

  def show
    @post = Post.find(params[:id])
  end

  # def new
  #   @post = Post.new
  # end

  def create
    @post = Post.new(params[:post])
    @post.user = current_user
    
    # p "This is upvote"
    # p "The button works!"

  end
  private



end