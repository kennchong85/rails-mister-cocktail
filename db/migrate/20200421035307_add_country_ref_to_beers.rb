class AddCountryRefToBeers < ActiveRecord::Migration[5.2]
  def change
    add_reference :beers, :country, foreign_key: true
  end
end
