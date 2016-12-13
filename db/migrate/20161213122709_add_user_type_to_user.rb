class AddUserTypeToUser < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :type, :string
    add_column :users, :user_type, :string, default: "member"
  end
end
