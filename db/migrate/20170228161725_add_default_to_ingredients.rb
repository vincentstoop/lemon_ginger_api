class AddDefaultToIngredients < ActiveRecord::Migration[5.1]
  def change
    def up
      remove_column :ingredients, :optional
    end

    def down
      add_column :ingredients, :optional, :boolean, {default: false}
    end
  end
end
