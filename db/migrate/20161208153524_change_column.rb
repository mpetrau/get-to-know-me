class ChangeColumn < ActiveRecord::Migration[5.0]
  def change
    change_column_default :offers, :liked?, from: nil, to: false
    change_column_default :offers, :bought?, from: nil, to: false
  end
end
