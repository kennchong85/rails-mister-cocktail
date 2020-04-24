class CreateWines < ActiveRecord::Migration[5.2]
  def change
    create_table :wines do |t|
      t.string :name
      t.text :description
      t.integer :vintage
      t.float :alcohol_percent
      t.timestamps
    end
  end
end
