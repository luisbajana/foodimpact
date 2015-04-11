class AddSustainabilityIndex < ActiveRecord::Migration
  def up
  	add_column :foods, :sustainability, :float
  end

  def down
  end
end
