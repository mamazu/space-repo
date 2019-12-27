class CreateBuildings < ActiveRecord::Migration[6.0]
  def change
    create_table :buildings do |t|
      t.string :level
      t.string :name
      t.belongs_to :village

      t.timestamps
    end
  end
end
