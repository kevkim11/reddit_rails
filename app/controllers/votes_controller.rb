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
    elsif params[:vote][:votable_type]=="Comment"
      @votable = Comment.find(params[:vote][:votable_id])
      p "inside Comment"
    end
    if @votable.votes.create(vote_params)
      # if post/comment's vote get's created, update the vote_count column respectively
      v_count = @votable.vote_count
      if params[:vote][:up_down_vote] == "false"
        # p "down vote!!!!!"
        v_count -= 1
        @votable.update(vote_count: v_count)
      else
        # p "up vote!!!!!"
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