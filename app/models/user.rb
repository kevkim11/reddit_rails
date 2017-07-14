class User < ApplicationRecord
  # many to many relationship
  has_many :posts
  has_many :comments

  has_and_belongs_to_many :subreddits

  #validations
  validates :email, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  # validates_presence_of :first_name, :last_name
end
