class CreateSubreddits < ActiveRecord::Migration[5.1]
  def change
    create_table :subreddits do |t|
      t.string :title
      t.text :description
      t.string :body


      t.timestamps
    end
  end
end
