class BuildingVillageAssociation < ActiveRecord::Migration[6.0]
  def change
    add_index :buildings, :village_id
  end
end
