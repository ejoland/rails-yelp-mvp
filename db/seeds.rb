# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'

premium_restaurants = [
  { name: 'The Gourmet Lounge', address: '123 Main Street, CityA', phone_number: '123-456-7890', category: 'french' },
  { name: 'La Trattoria', address: '456 Elm Street, CityB', phone_number: '987-654-3210', category: 'italian' },
  { name: 'Sakura Sushi', address: '789 Oak Street, CityC', phone_number: '555-123-4567', category: 'japanese' },
  { name: 'Le Petit Bistro', address: '321 Pine Street, CityD', phone_number: '777-888-9999', category: 'french' },
  { name: 'Belgian Delights', address: '555 Maple Street, CityE', phone_number: '222-333-4444', category: 'belgian' }
]

premium_restaurants.each do |restaurant|
  Restaurant.create!(restaurant)
end
