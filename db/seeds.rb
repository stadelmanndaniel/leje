# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Offer.create(
  name: "Raclette stove",
  description: "Perfect stove for your next Raclette gathering in winter",
  price: 13.90,
  address: "Kreuzberg"
)

Offer.create(
  name: "Drill",
  description: "Want to finally hang up the painting that's been on the floor for the past few months?",
  price: 23.90,
  address: "Schoeneberg"
)

Offer.create(
  name: "Kaercher window cleaner",
  description: "Want to have the 'Durchblick' again and actually see what's outside?",
  price: 3.90,
  address: "Mitte"
)
