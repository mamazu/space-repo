class AddingTypeName < ActiveRecord::Migration[6.0]
  def change
    change_table :maps do |t|
      t.string :type_name
    end
    change_column_null :maps, :type_name, false
  end
end
