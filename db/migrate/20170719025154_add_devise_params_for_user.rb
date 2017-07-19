class AddDeviseParamsForUser < ActiveRecord::Migration[5.1]
  def change
    change_column(:users, :email, :string, null: false, default: "")
    add_column(:users, :encrypted_password, :string, null: false, default: "")
    # add_column(:users, :remember_created_at, :datetime)
  end
end
