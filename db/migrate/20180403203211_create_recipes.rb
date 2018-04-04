class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :ingredient
      t.integer :time_to_make
      t.string :cuisine

      t.timestamps
    end
  end
end
