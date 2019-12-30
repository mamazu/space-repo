class AddPlanetToUser < ActiveRecord::Migration[6.0]
  def change
    change_table :planets do |t|
      t.references :user, null: true, foreign_key: true
    end
  end
end
