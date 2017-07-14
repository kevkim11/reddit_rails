class VotesController < ApplicationController

  def new
    @vote = Vote.new
  end

  def create
    p params
    p "KKKKKKKKKKKKKKKKKKKKK"
    @vote = Vote.new(vote_params)
    render "subreddits/show"
  end

  private
  def vote_params
    params.require(:vote).permit(:votable_type, :votable_id, :up_down_vote, :user_id)
  end
end