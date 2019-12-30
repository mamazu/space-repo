class CreateMaps < ActiveRecord::Migration[6.0]
  def change
    create_table :maps do |t|
      t.integer :x
      t.integer :y
      t.references :typ
      t.boolean :traversable

      t.timestamps
    end
  end
end
