# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.create!(
  email: 'VZUassswefasdfawffwreh@example.com',
  password: 'password',
)

Ship.create!(
  name: 'Thousand Sunny',
  description: 'The second ship of the Straw Hat Pirates in One Piece',
  price: 500,
  category: 'Pirate',
  address: 'Grand Line',
  user: User.first
)

Ship.create!(
  name: 'Queen Anne\'s Revenge',
  description: 'The ship of the infamous pirate Blackbeard',
  price: 300,
  category: 'Pirate',
  address: 'Carribean Sea',
  user: User.first
)
Ship.create!(
  name: 'Titanic',
  description: 'A British passenger liner that sank in the North Atlantic Ocean',
  price: 100,
  category: 'Passenger',
  address: 'North Atlantic Ocean',
  user: User.first
)

Ship.create!(
  name: 'Black Pearl',
  description: 'A legendary pirate ship known for its speed and captained by Jack Sparrow',
  price: 400,
  category: 'Pirate',
  address: 'Carribean Sea',
  user: User.first
)
