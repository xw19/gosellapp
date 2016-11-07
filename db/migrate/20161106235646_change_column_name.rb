class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :prospects, :Facebook, :facebook
  end
end
