class AddDefaultsToUsers < ActiveRecord::Migration[5.0]
  def change
    change_column_default :users, :first_name, from: nil, to: ""
    change_column_default :users, :last_name, from: nil, to: ""
    change_column_default :users, :location, from: nil, to: ""
    remove_column :users, :provider, :string
    add_column :offers, :provider, :string, default: ""
  end
end
