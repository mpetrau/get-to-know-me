class ChangeScoreFormatInOffer < ActiveRecord::Migration[5.0]
  def change
      remove_column :offers, :score, :integer
      add_column :offers, :score, :float, default: 0
  end
end
