class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :content #Remember to limit this to 10,000 during validation
      t.integer :parent_comment_id #Not a key, just integer.

      t.timestamps
    end
  end
end
