class Comment < ApplicationRecord
  has_many :votes, as: :votable

  belongs_to :user
  belongs_to :post # will probably need to make this a reference.

  # belongs_to :comment, foreign_key: 'parent_comment_id'


end
