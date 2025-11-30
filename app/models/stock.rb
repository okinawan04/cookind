class Stock < ApplicationRecord
    has_many :recipe_stocks, dependent: :destroy
    has_many :recipes, through: :recipe_stocks
end
