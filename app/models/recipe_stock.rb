class RecipeStock < ApplicationRecord
  belongs_to :recipe
  belongs_to :stock
end
