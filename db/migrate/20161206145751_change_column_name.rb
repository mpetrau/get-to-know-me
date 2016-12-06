class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :offers, :saved?, :liked?
  end
end
