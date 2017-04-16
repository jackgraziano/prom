class AddColorToDresses < ActiveRecord::Migration[5.0]
  def change
    add_reference :dresses, :color, foreign_key: true
  end
end
