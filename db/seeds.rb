# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do 
  d = Department.create(category: Faker::Commerce.department)
  5.times do
    d.items.create(name: Faker::HarryPotter.character,  description: Faker::HarryPotter.house, price: 100.00 )
  end
  
end

puts "created items"

puts "departments seeded!"