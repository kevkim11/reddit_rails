class CreateRefSubredditsAndPosts < ActiveRecord::Migration[5.1]
  def change
    add_reference :posts, :subreddit, foreign_key: true
  end
end
