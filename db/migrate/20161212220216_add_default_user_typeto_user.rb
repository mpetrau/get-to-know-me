class AddDefaultUserTypetoUser < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :user_type, :string, default: "member"
  end
end
