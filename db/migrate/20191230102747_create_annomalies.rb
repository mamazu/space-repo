class CreateAnnomalies < ActiveRecord::Migration[6.0]
  def change
    create_table :annomalies do |t|
      t.string :type
      t.integer :level
      t.integer :upkeep
      t.integer :restoration_cost
      t.references :modifier

      t.timestamps
    end
  end
end
