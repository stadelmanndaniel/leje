require "open-uri"

puts 'Creating 3 fake users...'

3.times do
  user = User.new(
    first_name: Faker::Name.first_name,
    email: "#{Faker::Name.first_name}@gmail.com",
    password: "123456",
    password_confirmation: "123456"
  )
  user.save
  puts "I just created a user nr #{user.id}"

  photo = URI.open("https://www.startupvalley.news/de/wp-content/uploads/sites/2/2017/10/WeiterGeben.jpg")
  puts 'Creating 3 fake offers...'
  offer = Offer.new(
    name: Faker::Appliance.equipment,
    description: "Perfect stove for your next Raclette gathering in winter",
    price: 13.90,
    address: "Kreuzberg"
  )
  offer.user = user
  offer.photo.attach(io: photo, filename: "nes.png", content_type: "image/png")
  offer.save
  p "Offer #{offer.id} created"

    booking = Booking.new(
      review: Faker::Lorem.paragraph(sentence_count: 2),
      rating: [1, 2, 3, 4, 5].sample,
      start_date: "01-01-2022",
      end_date: "02-01-2022"
    )
    booking.user = user
    booking.offer = offer
    booking.save
    p "Review #{booking.id} created"

    booking = Booking.new(
      review: Faker::Lorem.paragraph(sentence_count: 2),
      rating: [1, 2, 3, 4, 5].sample,
      start_date: "01-02-2022",
      end_date: "02-02-2022"
    )
    booking.user = user
    booking.offer = offer
    booking.save
    p "Review #{booking.id} created"

    booking = Booking.new(
      review: Faker::Lorem.paragraph(sentence_count: 2),
      rating: [1, 2, 3, 4, 5].sample,
      start_date: "01-03-2022",
      end_date: "02-03-2022"
    )
    booking.user = user
    booking.offer = offer
    booking.save
    p "Review #{booking.id} created"

  offer = Offer.new(
    name: Faker::Appliance.equipment,
    description: "Want to finally hang up the painting that's been on the floor for the past few months?",
    price: 23.90,
    address: "Schoeneberg"
  )
  offer.user = user
  offer.save
  p "Offer #{offer.id} created"
  booking = Booking.new(
    review: Faker::Lorem.paragraph(sentence_count: 2),
    rating: [1, 2, 3, 4, 5].sample,
    start_date: "01-01-2022",
    end_date: "02-01-2022"
  )
  booking.user = user
  booking.offer = offer
  booking.save
  p "Review #{booking.id} created"

  booking = Booking.new(
    review: Faker::Lorem.paragraph(sentence_count: 2),
    rating: [1, 2, 3, 4, 5].sample,
    start_date: "01-02-2022",
    end_date: "02-02-2022"
  )
  booking.user = user
  booking.offer = offer
  booking.save
  p "Review #{booking.id} created"

  booking = Booking.new(
    review: Faker::Lorem.paragraph(sentence_count: 2),
    rating: [1, 2, 3, 4, 5].sample,
    start_date: "01-03-2022",
    end_date: "02-03-2022"
  )
  booking.user = user
  booking.offer = offer
  booking.save
  p "Review #{booking.id} created"

  offer = Offer.new(
    name: Faker::Appliance.equipment,
    description: "Want to have the 'Durchblick' again and actually see what's outside?",
    price: 3.90,
    address: "Mitte"
  )
  offer.user = user
  offer.save
  p "Offer #{offer.id} created"
  booking = Booking.new(
    review: Faker::Lorem.paragraph(sentence_count: 2),
    rating: [1, 2, 3, 4, 5].sample,
    start_date: "01-01-2022",
    end_date: "02-01-2022"
  )
  booking.user = user
  booking.offer = offer
  booking.save
  p "Review #{booking.id} created"

  booking = Booking.new(
    review: Faker::Lorem.paragraph(sentence_count: 2),
    rating: [1, 2, 3, 4, 5].sample,
    start_date: "01-02-2022",
    end_date: "02-02-2022"
  )
  booking.user = user
  booking.offer = offer
  booking.save
  p "Review #{booking.id} created"

  booking = Booking.new(
    review: Faker::Lorem.paragraph(sentence_count: 2),
    rating: [1, 2, 3, 4, 5].sample,
    start_date: "01-03-2022",
    end_date: "02-03-2022"
  )
  booking.user = user
  booking.offer = offer
  booking.save
  p "Review #{booking.id} created"
end
p "Seeding complete"
p "You now have #{User.count} users, #{Offer.count} offers, #{Booking.count} reviews."
