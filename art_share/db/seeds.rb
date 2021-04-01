# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Artwork.destroy_all
User.destroy_all
julia = User.create!(username: 'Julia')
evan = User.create!(username: 'Evan')
Artwork.create!(title: 'Art1', image_url:'img.com', artist_id: julia.id)
Artwork.create!(title: 'Art2', image_url:'img.com', artist_id: evan.id)

