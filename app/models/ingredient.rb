class Ingredient < ApplicationRecord

	has_many :recipe_ingredients
	has_many :recipes, through: :recipe_ingredients
	belongs_to :recipes, optional: true

end
