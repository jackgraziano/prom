class AddPhotoToDress < ActiveRecord::Migration[5.0]
  def change
    add_column :dresses, :photo, :string
  end
end
