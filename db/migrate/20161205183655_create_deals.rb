class CreateDeals < ActiveRecord::Migration[5.0]
  def change
    create_table :deals do |t|
      t.string :name
      t.string :description
      t.integer :original_price
      t.integer :new_price
      t.string :url
      t.string :category
      t.string :location
      t.string :discount

      t.timestamps
    end
  end
end
