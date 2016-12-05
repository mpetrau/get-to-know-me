class CreateCharacteristics < ActiveRecord::Migration[5.0]
  def change
    create_table :characteristics do |t|
      t.string :name
    end
  end
end
