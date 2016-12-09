class AddAdditionalFieldsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :about, :string
    add_column :users, :birthday, :string
    add_column :users, :gender, :string
    add_column :users, :sports, :string
  end
end
