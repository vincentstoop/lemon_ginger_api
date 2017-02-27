class CreateCookingSteps < ActiveRecord::Migration[5.1]
  def change
    create_table :cooking_steps do |t|
      t.string :title
      t.integer :cooking_time
      t.text :description
      t.references :recipe, foreign_key: true

      t.timestamps
    end
  end
end
