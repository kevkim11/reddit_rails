class ChangeColumnVoteCountInPost < ActiveRecord::Migration[5.1]
  def change
    change_column :posts, :vote_count, :integer, :default => 0
  end
end
