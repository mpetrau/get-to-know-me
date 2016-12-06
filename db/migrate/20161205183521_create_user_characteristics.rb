class CreateUserCharacteristics < ActiveRecord::Migration[5.0]
  def change
    create_table :user_characteristics do |t|
      t.references :user, foreign_key: true
      t.references :characteristic, foreign_key: true

      t.timestamps
    end
  end
end
