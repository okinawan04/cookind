class Recipe < ApplicationRecord
    has_many :recipe_stocks, dependent: :destroy
    has_many :stocks, through: :recipe_stocks
  # フォームから一時的に受け取る在庫ID
  attr_accessor :stock_id
end
