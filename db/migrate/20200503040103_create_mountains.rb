class CreateMountains < ActiveRecord::Migration[6.0]
  def change
    create_table :mountains do |t|
      t.string :name
      t.integer :height
      t.references :state, null: false, foreign_key: true

      t.timestamps
    end
  end
end
