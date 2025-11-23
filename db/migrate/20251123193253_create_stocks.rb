class CreateStocks < ActiveRecord::Migration[7.2]
  def change
    create_table :stocks do |t|
      t.string :name
      t.integer :quantity
      t.integer :amount

      t.timestamps
    end
  end
end
