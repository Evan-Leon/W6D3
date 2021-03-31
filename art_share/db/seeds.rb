# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(username: 'Julia', email:'julia@julia.com')
User.create!(username: 'Evan', email:'evan@julia.com')
Artwork.create!(title: 'Art1', image_url:'img.com', artist_id: 1)
Artwork.create!(title: 'Art2', image_url:'img.com', artist_id: 2)
