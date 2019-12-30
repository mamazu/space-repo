class CreateMapDecorations < ActiveRecord::Migration[6.0]
  def change
    create_table :map_decorations do |t|
      t.string :type
      t.string :name

      t.timestamps
    end
  end
end
