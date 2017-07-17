class Post < ApplicationRecord
  # polymorphism for votes in posts
  # TODO dependent destroy?
  has_many :votes, as: :votable

  # one to many relationship
  belongs_to :subreddit
  belongs_to :user
  
  has_many :comments

  enum post_type: ['link','text']
end
