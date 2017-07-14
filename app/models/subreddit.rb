class Subreddit < ApplicationRecord
  # many to many relationship
  has_and_belongs_to_many :users
  has_many :posts

  # validates_associated :posts

end
