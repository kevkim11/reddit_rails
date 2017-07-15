class Vote < ApplicationRecord
  belongs_to :votable, polymorphic: true

  # validate :uniqueness_by_votable

  private
  # TODO get an error with .add("you already voted")
  def uniqueness_by_votable
    errors.add("you already voted!") if Vote.where(votable: self.votable, user_id: self.user_id).count > 0
  end
end
