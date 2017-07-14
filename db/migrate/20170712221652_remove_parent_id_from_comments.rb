class RemoveParentIdFromComments < ActiveRecord::Migration[5.1]
  def change
    remove_column :comments, :parent_commment_id, :integer
  end
end
