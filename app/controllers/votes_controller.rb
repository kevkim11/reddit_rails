class VotesController < ApplicationController
  # before_action :load_votable

  def new
    @vote = Vote.new
    # @vote = @votable
  end

  def create
    p "params: #{params}"
    if params[:vote][:votable_type]=="Post"
      @votable = Post.find(params[:vote][:votable_id])
    elsif params[:votable_type]=="comments"
      @votable = Comment.find(params[:vote][:votable_id])
    end
    if @votable.votes.create(vote_params)
      # if post/comment's vote get's created, update the vote_count column respectively
      v_count = @votable.vote_count
      p "hey there your creating a vote: #{params[:vote][:up_down_vote]}"
      if params[:vote][:up_down_vote] == "false"
        p "down vote!!!!!"
        v_count -= 1
        @votable.update(vote_count: v_count)
      else
        p "up vote!!!!!"
        v_count += 1
        @votable.update(vote_count: v_count)
      end
    end
    p "a vote was created! in #{@votable}"
    redirect_back fallback_location: root_path
  end

  private
  def vote_params
    params.require(:vote).permit(:votable_type, :votable_id, :up_down_vote, :user_id)
  end
end