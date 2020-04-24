class CreateWhiskeys < ActiveRecord::Migration[5.2]
  def change
    create_table :whiskeys do |t|
      t.string :name
      t.text :description
      t.integer :year
      t.timestamps
    end
  end
end
