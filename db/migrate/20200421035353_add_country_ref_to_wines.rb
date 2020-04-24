class AddCountryRefToWines < ActiveRecord::Migration[5.2]
  def change
    add_reference :wines, :country, foreign_key: true
  end
end
