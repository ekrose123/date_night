json.extract! recipe, :id, :name, :instructions, :est_time, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
