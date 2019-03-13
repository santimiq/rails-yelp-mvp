# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Tacos',
    address:      '7 Boundary St, London E2 7JE',
    phone_number:  '555555123123',
    category:       'chinese'
  },
  {
    name:         'Pasta Italiana',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number:  '563110102204',
    category:        'italian'
  },
    {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number:  '98754623434',
    category:        'french'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number:  '53656302204',
    category:        'japanese'
  },
    {
    name:         'Dishoom2',
    address:      '7 Boundary St, London E2 7JE',
    phone_number:  '645354534543543',
    category:        'italian'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
