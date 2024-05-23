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

file = URI.open("https://static.wikia.nocookie.net/onepiece/images/b/b1/Thousand_Sunny_Infobox.png/revision/latest?cb=20220904012119g")
ship = Ship.new(
  name: 'Thousand Sunny',
  description: 'The second ship of the Straw Hat Pirates in One Piece, originally built by Franky.',
  price: 800,
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

file = URI.open("https://cdn.balancia.co.id/wp-content/uploads/2023/03/history-of-titanic-1536x1024.jpeg?strip=all&lossy=1&quality=80&webp=80&avif=80&sharp=1&ssl=1")
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



file = URI.open("https://static.wikia.nocookie.net/onepiece/images/9/9b/Oro_Jackson_Infobox.png/revision/latest/scale-to-width-down/1000?cb=20210124033241")
ship = Ship.new(
  name: 'Oro Jackson',
  description: 'The legendary ship of the Pirate King, Gol D. Roger, used by the Roger Pirates.',
  price: 1000,
  category: 'Pirate',
  address: 'Unknown',
  user: User.first
)
ship.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
ship.save

file = URI.open("https://static.wikia.nocookie.net/onepiece/images/4/41/Going_Merry_Infobox.png/revision/latest?cb=20121214234157")
ship = Ship.new(
  name: 'Going Merry',
  description: 'The first ship of the Straw Hat Pirates in One Piece, gifted to them by Kaya.',
  price: 500,
  category: 'Pirate',
  address: 'East Blue',
  user: User.first
)
ship.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
ship.save

file = URI.open("https://d23.com/app/uploads/2020/06/1180w-600h_01_0834-P2C-21187_R-780x440.jpg")
ship = Ship.new(
  name: 'Flying Dutchman',
  description: 'A legendary ghost ship commanded by Davy Jones in the Pirates of the Caribbean film series. It is said to be cursed to sail the seas forever.',
  price: 1200,
  category: 'Pirate',
  address: 'Unknown',
  user: User.first
)
ship.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
ship.save
