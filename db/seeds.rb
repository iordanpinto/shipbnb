# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.destroy_all
Ship.destroy_all

require "open-uri"


User.create!(
  email: 'VZUassdsdsdasdsswefasdfawffwreh@example.com',
  password: 'password',
)

file = URI.open("https://preview.redd.it/qyi98jfbwqt61.jpg?width=640&crop=smart&auto=webp&s=7d933e4e2679a7d7790fe7a944077df8f46919d3")
ship = Ship.new(
  name: 'Thousand Sunny',
  description: 'The second ship of the Straw Hat Pirates in One Piece',
  price: 500,
  category: 'Pirate',
  address: 'Grand Line',
  user: User.first
)
ship.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
ship.save

file = URI.open("https://images.unsplash.com/photo-1568347877321-f8935c7dc5a3?q=80&w=2874&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
ship = Ship.new(
  name: 'Queen Annes Revenge',
  description: 'The ship of the infamous pirate Blackbeard',
  price: 300,
  category: 'Pirate',
  address: 'Carribean Sea',
  user: User.first
)
ship.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
ship.save

file = URI.open("https://www.merkur.de/assets/images/28/580/28580509-vor-110-jahren-sank-die-titanic-2uea.jpg")
ship = Ship.new(
  name: 'Titanic',
  description: 'A British passenger liner that sank in the North Atlantic Ocean',
  price: 100,
  category: 'Passenger',
  address: 'North Atlantic Ocean',
  user: User.first
)
ship.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
ship.save

file = URI.open("https://images.nightcafe.studio/jobs/Y5uL5Hx5jue6hOwCb7ao/Y5uL5Hx5jue6hOwCb7ao--1--yv392_11.3636x.jpg?tr=w-1600,c-at_max")
ship = Ship.new(
  name: 'Black Pearl',
  description: 'A legendary pirate ship known for its speed and captained by Jack Sparrow',
  price: 400,
  category: 'Pirate',
  address: 'Carribean Sea',
  user: User.first
)
ship.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
ship.save
