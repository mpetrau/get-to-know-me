class ChangeColumnNull < ActiveRecord::Migration[5.0]
  def change
    change_column_default :offers, :disliked?, from: nil, to: false 
  end
end
