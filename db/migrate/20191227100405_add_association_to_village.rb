class AddAssociationToVillage < ActiveRecord::Migration[6.0]
  def change
    add_column :buildings, :village_id, :villages
  end
end
