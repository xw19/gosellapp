class CreateResults < ActiveRecord::Migration[5.0]
  def change
    create_table :results do |t|
      t.string :disposition
      t.datetime :event
      t.boolean :accessible
      t.references :prospect, foreign_key: true

      t.timestamps
    end
  end
end
