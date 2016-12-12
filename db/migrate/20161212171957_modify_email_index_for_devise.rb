class ModifyEmailIndexForDevise < ActiveRecord::Migration[5.0]
  def change
  remove_index :users, :email
  add_index :users, [:email, :user_type], :unique => true, where: "(user_type != 'guest')"
  end
end
