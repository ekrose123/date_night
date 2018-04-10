class RecipeIngredient < ApplicationRecord

	belongs_to :recipes
	belongs_to :ingredients

	accepts_nested_attributes_for :ingredients 
end
