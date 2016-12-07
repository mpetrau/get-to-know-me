class CreateWeights < ActiveRecord::Migration[5.0]
  def change
    create_table :weights do |t|
      t.references :tag, foreign_key: true
      t.references :trait, foreign_key: true
      t.float :weight

      t.timestamps
    end
  end
end
