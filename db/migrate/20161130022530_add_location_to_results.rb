class AddLocationToResults < ActiveRecord::Migration[5.0]
  def change
    add_column :results, :location, :string
  end
end
