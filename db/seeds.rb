# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.delete_all

puts 'Creating 5 restaurants'

5.times do
  name = Faker::Restaurant.name
  address = Faker::Address.street_address
  category = Restaurant::CATEGORIES.sample
  phone = Faker::PhoneNumber.phone_number
  Restaurant.create!(name: name, address: address, category: category, phone_number: phone)
end

puts "Created #{Restaurant.count} restaurants"
