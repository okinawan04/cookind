class CreateRecipeStocks < ActiveRecord::Migration[7.2]
  def change
    create_table :recipe_stocks do |t|
      t.references :recipe, null: false, foreign_key: true
      t.references :stock, null: false, foreign_key: true

      t.timestamps
    end
  end
end
