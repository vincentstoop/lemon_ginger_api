class AddWeekRecipeToRecipes < ActiveRecord::Migration[5.1]
  def change
    add_column :recipes, :week_recipe, :boolean, {default: false}
  end
end
