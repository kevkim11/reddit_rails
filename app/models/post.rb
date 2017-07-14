class Post < ApplicationRecord
  # polymorphism for votes in posts
  has_many :votes, as: :votable #dependent destroy?

  # one to many relationship
  belongs_to :subreddit
  belongs_to :user
  
  has_many :comments

  enum type: ['link','text']
end
