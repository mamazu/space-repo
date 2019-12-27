# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def create_level(building)
	BuildingLevel.create(:building => building, :level => 1, :building_cost => nil)
	2..6.each do |level|
		BuildingLevel.create(:building => building, :level => 2, :building_cost => Resources.new(:lumber => 10 * level))
	end
end

main = Building.create(:name => 'Main Building', :default => true)
luberJack = Building.create(:name => 'Lumberjack', :default => true)
clayPit = Building.create(:name => 'Clay pit', :default => true)

create_level(main)
create_level(luberJack)
create_level(clayPit)