class CreateVillages < ActiveRecord::Migration[6.0]
  def change
    create_table :villages do |t|
      t.string :name
      t.string :level
      t.string :position_x
      t.string :position_y

      t.timestamps
    end
  end
end
