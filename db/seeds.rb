# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Flat.destroy_all

puts 'Creating flats...'
LoveHouse = { name: 'Love', address: '7 Boundary St, London E2 7JE', description: 'perfect for start making children, all the house is thinking for love', price_per_night: 20 }
SportHouse = { name: 'Sport', address: '56A Shoreditch High St, London E1 6PQ', description: 'No chairs, just yoour legs if you want to chill, musculation is the key opf your life', price_per_night: 54 }
HolidaysHouse = { name: 'Holiday', address: '59 Chill avenue, Lazy 57 990 A', description: 'Belle maison pour les gros sacs qui ont juste envie de lézarder toute la journée', price_per_night: 120 }
FamilyHouse =  { name: 'Family', address: '3 Horreur rue, Torture B1 6ZQ', description: 'Pour de belle vacances en famille, une super sale de torture et de séquestration pour vos enfants. Les vacances sont toujours plus belle avec les enfants', price_per_night: 350 }

[ LoveHouse, SportHouse, HolidaysHouse, FamilyHouse ].each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end
puts "Finished!"
