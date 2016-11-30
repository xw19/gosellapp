class AddActivityToResults < ActiveRecord::Migration[5.0]
  def change
    add_column :results, :activity, :string
  end
end
