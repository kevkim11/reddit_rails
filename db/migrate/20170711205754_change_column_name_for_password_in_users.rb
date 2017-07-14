class ChangeColumnNameForPasswordInUsers < ActiveRecord::Migration[5.1]
  def change
    # rename_column :table_name, :old_column, :new_column
    rename_column :users, :encrypted_password, :password
  end
end
