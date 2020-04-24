class ChangeDescriptionInCocktail < ActiveRecord::Migration[5.2]
  def change
    change_column :cocktails, :description, :text
  end
end
