# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# Generate random map entries
@count = 0
while @count <= 100
  case @count % 3
  when 0
    type_name = 'annomalie'
    reference = Annomalie.create
  when 1
    type_name = 'decoration'
    reference = MapDecoration.create
  when 2
    type_name = 'planet'
    reference = Planet.create(user: nil)
  end
  reference.save!

  begin
    x = rand(10..90)
    y = rand(10..90)
    Map.create(x: x, y: y, type_name: type_name, typ_id: reference.id)
    @count += 1
  rescue ActiveRecord::RecordNotUnique => e
  end
end
