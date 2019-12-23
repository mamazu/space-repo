class AddUniquenessConstraintToLocations < ActiveRecord::Migration[6.0]
  def change

    add_index :villages, [:position_x, :position_y], {unique: true, name: 'unique_position_per_village'}
  end
end
