class AddReferenceToComments < ActiveRecord::Migration[5.1]
  def change
    remove_column :comments, :post_id, :integer
    add_reference :comments, :post, foreign_key: true
  end
end
