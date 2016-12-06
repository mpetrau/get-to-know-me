class CreateUserDeals < ActiveRecord::Migration[5.0]
  def change
    create_table :user_deals do |t|
      t.references :deal, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :score
      t.boolean :saved?
      t.boolean :disliked?
      t.boolean :bought?

      t.timestamps
    end
  end
end
