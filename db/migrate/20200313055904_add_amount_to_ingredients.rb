class AddAmountToIngredients < ActiveRecord::Migration[5.2]
  def change
    add_column :ingredients, :amount, :string
  end
end
