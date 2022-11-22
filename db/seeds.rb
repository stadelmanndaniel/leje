require "open-uri"

puts 'cleaning the db..'
Offer.destroy_all
User.destroy_all

omran = User.create!(email: 'onram@onram.com', password: 'password')

offer_1_file = URI.open("https://www.startupvalley.news/de/wp-content/uploads/sites/2/2017/10/WeiterGeben.jpg")

offer1 = Offer.create!(
  name: "Raclette stove",
  description: "Perfect stove for your next Raclette gathering in winter",
  price: 13.90,
  address: "Kreuzberg",
  user: omran
)

offer1.photo.attach(io: offer_1_file, filename: "nes.png", content_type: "image/png")
offer1.save


Offer.create!(
  name: "Drill",
  description: "Want to finally hang up the painting that's been on the floor for the past few months?",
  price: 23.90,
  address: "Schoeneberg",
  user: omran
)

Offer.create!(
  name: "Kaercher window cleaner",
  description: "Want to have the 'Durchblick' again and actually see what's outside?",
  price: 3.90,
  address: "Mitte",
  user: omran
)
