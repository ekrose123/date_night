class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.integer :est_time
      t.string :cuisine
      t.string :name

      t.timestamps
    end
  end
end
