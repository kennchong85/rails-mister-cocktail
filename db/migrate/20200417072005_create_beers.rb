class CreateBeers < ActiveRecord::Migration[5.2]
  def change
    create_table :beers do |t|
      t.string :name
      t.text :description
      t.float :alcohol_percent
      t.timestamps
    end
  end
end
