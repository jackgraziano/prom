class AddPriceToDresses < ActiveRecord::Migration[5.0]
  def change
    add_column :dresses, :rental_price, :decimal, :precision => 8, :scale => 2
    add_column :dresses, :sale_price, :decimal, :precision => 8, :scale => 2
  end
end
