class RemoveOptionalFromIngredients < ActiveRecord::Migration[5.1]
  def change
    remove_column :ingredients, :optional
  end
end
