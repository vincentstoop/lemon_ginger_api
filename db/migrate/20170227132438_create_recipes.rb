class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :subtitle
      t.integer :cooking_time
      t.text :intro

      t.timestamps
    end
  end
end
