class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|
      t.text :detail, limit: 500
      t.references :prospect, foreign_key: true

      t.timestamps
    end
  end
end
