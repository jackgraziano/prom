class CreateDresses < ActiveRecord::Migration[5.0]
  def change
    create_table :dresses do |t|
      t.string :name
      t.string :size
      t.string :color
      t.text :obs

      t.timestamps
    end
  end
end
