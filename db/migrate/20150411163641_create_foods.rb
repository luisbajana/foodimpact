class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.string :category
      t.string :address
      t.string :address
      t.float :latitude
      t.float :longitude
      t.float :quantity_produced
      t.float :quantity_consumed

      t.timestamps
    end
  end
end
