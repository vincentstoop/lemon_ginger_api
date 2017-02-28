class AddPersonsToRecipes < ActiveRecord::Migration[5.1]
  def change
    add_column :recipes, :persons, :integer
  end
end
