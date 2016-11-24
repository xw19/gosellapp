class AddPrimaryContactToProspects < ActiveRecord::Migration[5.0]
  def change
    add_column :prospects, :primary_contact, :integer
  end
end
