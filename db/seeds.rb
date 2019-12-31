# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# Generate random map entries
@count = 0
while @count <= 10 do
    Map.create(:x => rand(10..90), :y => rand(10..90))
    @count = @count + 1
end