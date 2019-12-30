class CreateSunSystems < ActiveRecord::Migration[6.0]
  def change
    create_table :sun_systems do |t|
      t.string :name
      t.integer :planet_count
      t.integer :size

      t.timestamps
    end
  end
end
