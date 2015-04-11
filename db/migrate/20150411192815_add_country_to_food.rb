class AddCountryToFood < ActiveRecord::Migration
  def change
  	add_column :foods, :country, :string
  end
end
