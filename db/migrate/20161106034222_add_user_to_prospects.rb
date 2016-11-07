class AddUserToProspects < ActiveRecord::Migration[5.0]
  def change
    add_reference :prospects, :user, foreign_key: true
  end
end
