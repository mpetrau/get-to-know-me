class AddPhotosToDeal < ActiveRecord::Migration[5.0]
  def change
    add_column :deals, :photo, :string
  end
end
