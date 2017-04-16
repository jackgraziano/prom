class RemoveColorFromDress < ActiveRecord::Migration[5.0]
  def change
    remove_column :dresses, :color
  end
end
