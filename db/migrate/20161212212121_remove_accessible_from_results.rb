class RemoveAccessibleFromResults < ActiveRecord::Migration[5.0]
  def change
    remove_column :Results, :accessible, :boolean
  end
end
