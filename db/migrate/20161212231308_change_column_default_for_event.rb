class ChangeColumnDefaultForEvent < ActiveRecord::Migration[5.0]
  def change
    change_column_default(:results, :event, nil)
  end
end
