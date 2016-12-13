class AddColumnsToResults < ActiveRecord::Migration[5.0]
  def change
    add_column :results, :coordinates, :float
    add_column :results, :latitude, :float
    add_column :results, :longitude, :float
  end
end