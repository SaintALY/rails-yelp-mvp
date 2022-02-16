# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

 # puts "Cleaning database..."
 # Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "02884563625", category: "japanese", ratings: 5, content: "what a nice place" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "028 4563625", category: "italian", stars: 4 }
schwabylon =  { name: "Schwabylon", address: "Pannierstr. 8, Berlin", phone_number: "030 584563625", category: "belgian", stars: 5 }
crepe_king =  { name: "The Crepes King", address: "Leipziger Str 4, Berlin", phone_number: "03088563625", category: "french", stars: 3 }
ming =  { name: "Ming Dynasty", address: "Bruckenstrasse 5, 12345 Berlin", phone_number: "030 546 87 254", category: "chinese", stars: 4 }

[ dishoom, pizza_east, schwabylon, crepe_king, ming ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"