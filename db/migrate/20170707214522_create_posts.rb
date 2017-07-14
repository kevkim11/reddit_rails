class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title, null: false, default: ''
      t.integer :type
      # Forgot description

      t.timestamps
    end
  end
end
