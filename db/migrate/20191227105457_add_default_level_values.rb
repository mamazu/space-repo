class AddDefaultLevelValues < ActiveRecord::Migration[6.0]
  def change
    Building.where(level: nil).update_all(level: 1)

    change_column_null :buildings, :level, false
  end
end
