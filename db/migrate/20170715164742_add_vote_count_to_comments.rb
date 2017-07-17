class AddVoteCountToComments < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :vote_count, :integer, default: 0
  end
end
