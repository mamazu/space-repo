class CreateBuildingLevels < ActiveRecord::Migration[6.0]
  def change
    create_table :building_levels do |t|
      t.references :building, null: false, foreign_key: true
      t.integer :level

      t.timestamps
    end
  end
end
