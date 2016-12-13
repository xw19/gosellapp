class AddCalledToProspects < ActiveRecord::Migration[5.0]
  def change
    add_column :prospects, :called, :boolean, default: false
  end
end
