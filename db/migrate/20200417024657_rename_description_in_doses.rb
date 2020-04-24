class RenameDescriptionInDoses < ActiveRecord::Migration[5.2]
  def change
    change_table :doses do |t|
      t.rename :description, :unit
    end
  end
end
