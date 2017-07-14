class Vote < ApplicationRecord
  belongs_to :votable, polymorphic: true

  # #uniqueness between a user and comment
  # validates :user, uniqueness: { scope: :post }
  # validates :votable_id, :votable_type, uniqueness: { scope: :user }
  #
  # #uniqueness between a user and comment
  # validates :user, uniqueness: { scope: :comment }
  # validates :comment, uniqueness: { scope: :user }

  validates :uniqueness_by_votable

  private
  # Custom validation
  def uniqueness_by_votable
    errors.add("you already voted!") if Vote.where(votable: self.votable, user: self.user).count > 0
  end
end
