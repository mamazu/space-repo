class CreateVillages < ActiveRecord::Migration[6.0]
  def change
    create_table :villages do |t|
      t.string :name
      t.string :level
      t.string :position_x
      t.string :position_y

      t.timestamps
    end

    add_index :villages, [:position_x, :position_y], {unique: true, name: 'unique_position_per_village'}
  end
end
