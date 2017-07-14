class AddParentCommentReferenceToComments < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :parent_commment_id, :integer
    add_index :comments, :parent_commment_id
  end
end
