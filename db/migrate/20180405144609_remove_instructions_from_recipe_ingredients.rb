class RemoveInstructionsFromRecipeIngredients < ActiveRecord::Migration[5.1]
  def change
  	remove_column :recipe_ingredients, :instructions, :text
  end
end
