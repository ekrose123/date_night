# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ingredient.destroy_all
Recipe.destroy_all
RecipeIngredient.destroy_all

%W(Potatoes Cinnamon Cumin Cheddar\ Cheese Spinach Carrots Cayenne\ Pepper Pork\ Chop Olive\ Oil Salt Vinegar Soy\ Sauce Brown\ Rice Fettuccine\ Noodles Artichoke\ Hearts Tomatoes Tomato\ Sauce Chicken\ Broth Chicken\ Breast).each do |ing_name|
	Ingredient.create(name: ing_name)
end


mp = Recipe.create(name: "Mashed Potatoes", instructions: "Make Mashed Potatoes", est_time: 30)

RecipeIngredient.create(recipe_id: mp.id, ingredient_id: Ingredient.find_by(name: "Potatoes").id, quantity: 4)
RecipeIngredient.create(recipe_id: mp.id, ingredient_id: Ingredient.find_by(name: "Salt").id, quantity: 1)
RecipeIngredient.create(recipe_id: mp.id, ingredient_id: Ingredient.find_by(name: "Chicken Broth").id, quantity: 2)


