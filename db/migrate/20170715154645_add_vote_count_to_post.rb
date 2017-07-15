class AddVoteCountToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :vote_count, :integer
  end
end
