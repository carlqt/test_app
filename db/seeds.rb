# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Plant.delete_all

new_plant = [{ name: "sexsex", comment: "legslegslegs" }, { name: "user2", comment: "jejejeje" }, 
						 { name: "biboy", comment: "lovelove"}, { name: "bruce", comment: "happyhappye"}, { name: "chucky", comment: "spmam"}]

new_plant.each do |plant|
		Plant.create(name: plant[:name], comment: plant[:comment])
		# Plant.save
end
