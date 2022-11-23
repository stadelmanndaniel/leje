require "open-uri"

puts 'Creating first fake user...'

user = User.new(
  first_name: Faker::Name.first_name,
  email: "#{Faker::Name.first_name}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone_in_e164,
  password: "123456",
  password_confirmation: "123456"
)
user.save
puts "I just created a user nr #{user.id}"
puts 'Creating 2 fake offers...'

photo1 = URI.open("https://images.unsplash.com/photo-1572981779307-38b8cabb2407?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2532&q=80")
photo2 = URI.open("https://images.unsplash.com/photo-1567507145544-da3fe1b4f8f9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80")
photo3 = URI.open("https://images.unsplash.com/photo-1569338270981-4159a7818c13?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1473&q=80")

offer = Offer.new(
  name: "Drill",
  description: "A brushless motor for more power and a longer running time than a standard screw driver",
  price: 10,
  address: "Kreuzberg",
  category: "Construction"
)
offer.user = user

offer.photos.attach(io: photo1, filename: "drill1.png", content_type: "image/png")
offer.photos.attach(io: photo2, filename: "drill2.png", content_type: "image/png")
offer.photos.attach(io: photo3, filename: "drill3.png", content_type: "image/png")
offer.save
p "Offer #{offer.id} created"

booking = Booking.new(
  review: Faker::Lorem.paragraph(sentence_count: 2),
  rating: [1, 2, 3, 4, 5].sample,
  start_date: "10-11-2022",
  end_date: "12-11-2022"
)
booking.user = user
booking.offer = offer
booking.save
p "Review #{booking.id} created"

booking = Booking.new(
  review: Faker::Lorem.paragraph(sentence_count: 2),
  rating: [1, 2, 3, 4, 5].sample,
  start_date: "15-11-2022",
  end_date: "17-11-2022"
)
booking.user = User.first
booking.offer = offer
booking.save
p "Review #{booking.id} created"


photo1 = URI.open("https://images.unsplash.com/photo-1583729250536-d5fb10401671?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80")
photo2 = URI.open("https://images.unsplash.com/photo-1613221699807-4940ba9b83f4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1385&q=80")
photo3 = URI.open("https://images.unsplash.com/photo-1619095762086-66b82f914dcf?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1325&q=80")

offer = Offer.new(
  name: "Toaster",
  description: "2-slice toaster for toasting one or two slices of bread at a time; 6 shade settings accommodate individual preferences",
  price: 7,
  address: "Mitte",
  category: "Kitchen"
)
offer.user = user

offer.photos.attach(io: photo1, filename: "toaster1.png", content_type: "image/png")
offer.photos.attach(io: photo2, filename: "toaster2.png", content_type: "image/png")
offer.photos.attach(io: photo3, filename: "toaster3.png", content_type: "image/png")
offer.save
p "Offer #{offer.id} created"

booking = Booking.new(
  review: Faker::Lorem.paragraph(sentence_count: 2),
  rating: [1, 2, 3, 4, 5].sample,
  start_date: "10-11-2022",
  end_date: "12-11-2022"
)
booking.user = User.first
booking.offer = offer
booking.save
p "Review #{booking.id} created"

booking = Booking.new(
  review: Faker::Lorem.paragraph(sentence_count: 2),
  rating: [1, 2, 3, 4, 5].sample,
  start_date: "15-11-2022",
  end_date: "17-11-2022"
)
booking.user = User.first
booking.offer = offer
booking.save
p "Review #{booking.id} created"
puts 'Creating second fake user...'

user = User.new(
  first_name: Faker::Name.first_name,
  email: "#{Faker::Name.first_name}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone_in_e164,
  password: "123456",
  password_confirmation: "123456"
)
user.save
puts "I just created a user nr #{user.id}"
puts 'Creating 2 fake offers...'

photo1 = URI.open("https://images.unsplash.com/photo-1595644258096-69155da290fd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1469&q=80")
photo2 = URI.open("https://images.unsplash.com/photo-1619981776631-844eef434b20?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80")
photo3 = URI.open("https://images.unsplash.com/photo-1564940735784-b15466e8dc09?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80")

offer = Offer.new(
  name: "KitchenAid",
  description: "Powerful motor with overheating protection",
  price: 20,
  address: "Moabit",
  category: "Kitchen"
)
offer.user = user

offer.photos.attach(io: photo1, filename: "kitchenaid1.png", content_type: "image/png")
offer.photos.attach(io: photo2, filename: "kitchenaid2.png", content_type: "image/png")
offer.photos.attach(io: photo3, filename: "kitchenaid3.png", content_type: "image/png")
offer.save
p "Offer #{offer.id} created"

booking = Booking.new(
  review: Faker::Lorem.paragraph(sentence_count: 2),
  rating: [1, 2, 3, 4, 5].sample,
  start_date: "10-11-2022",
  end_date: "12-11-2022"
)
booking.user = User.first
booking.offer = offer
booking.save
p "Review #{booking.id} created"

booking = Booking.new(
  review: Faker::Lorem.paragraph(sentence_count: 2),
  rating: [1, 2, 3, 4, 5].sample,
  start_date: "17-11-2022",
  end_date: "19-11-2022"
)
booking.user = User.first
booking.offer = offer
booking.save
p "Review #{booking.id} created"


photo1 = URI.open("https://images.unsplash.com/photo-1594213114663-d94db9b17125?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1469&q=80")
photo2 = URI.open("https://plus.unsplash.com/premium_photo-1663853293239-de864f4ee218?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80")
photo3 = URI.open("https://images.unsplash.com/photo-1571934811356-5cc061b6821f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1734&q=80")

offer = Offer.new(
  name: "Kettle",
  description: "Basic kettle, but it does the job",
  price: 2,
  address: "Mitte",
  category: "Kitchen"
)
offer.user = user

offer.photos.attach(io: photo1, filename: "kettle1.png", content_type: "image/png")
offer.photos.attach(io: photo2, filename: "kettle2.png", content_type: "image/png")
offer.photos.attach(io: photo3, filename: "kettle3.png", content_type: "image/png")
offer.save
p "Offer #{offer.id} created"

booking = Booking.new(
  review: Faker::Lorem.paragraph(sentence_count: 2),
  rating: [1, 2, 3, 4, 5].sample,
  start_date: "10-11-2022",
  end_date: "12-11-2022"
)
booking.user = User.second
booking.offer = offer
booking.save
p "Review #{booking.id} created"

booking = Booking.new(
  review: Faker::Lorem.paragraph(sentence_count: 2),
  rating: [1, 2, 3, 4, 5].sample,
  start_date: "15-11-2022",
  end_date: "17-11-2022"
)
booking.user = User.second
booking.offer = offer
booking.save
p "Review #{booking.id} created"




puts 'Creating third fake user...'

user = User.new(
  first_name: Faker::Name.first_name,
  email: "#{Faker::Name.first_name}@gmail.com",
  phone_number: Faker::PhoneNumber.cell_phone_in_e164,
  password: "123456",
  password_confirmation: "123456"
)
user.save
puts "I just created a user nr #{user.id}"
puts 'Creating 2 fake offers...'

photo1 = URI.open("https://www.einhell.de/fileadmin/corporate-media/products/garden/trimmers-scythes/einhell-garden-trimmers-scythes-akku-trimmer-content.jpg")
photo2 = URI.open("https://www.bosch-presse.de/pressportal/de/media/dam_images/pi11472/kv_advancedhedgecut_36v-65-28_anwendung-ueber-kopf_img_w1600.jpg")
photo3 = URI.open("https://expertreviews.b-cdn.net/sites/expertreviews/files/styles/er_main_wide/public/2021/05/best_grass_trimmer_-_main.jpg?itok=UimfPwUS")

offer = Offer.new(
  name: "Grass trimmer",
  description: "Trim your garden quickly and without much hassle",
  price: 20,
  address: "Moabit",
  category: "Garden"
)
offer.user = user

offer.photos.attach(io: photo1, filename: "trimmer1.png", content_type: "image/png")
offer.photos.attach(io: photo2, filename: "trimmer1.png", content_type: "image/png")
offer.photos.attach(io: photo3, filename: "trimmer1.png", content_type: "image/png")
offer.save
p "Offer #{offer.id} created"

booking = Booking.new(
  review: Faker::Lorem.paragraph(sentence_count: 2),
  rating: [1, 2, 3, 4, 5].sample,
  start_date: "10-11-2022",
  end_date: "12-11-2022"
)
booking.user = User.second
booking.offer = offer
booking.save
p "Review #{booking.id} created"

booking = Booking.new(
  review: Faker::Lorem.paragraph(sentence_count: 2),
  rating: [1, 2, 3, 4, 5].sample,
  start_date: "17-11-2022",
  end_date: "19-11-2022"
)
booking.user = User.third
booking.offer = offer
booking.save
p "Review #{booking.id} created"


photo1 = URI.open("https://images.unsplash.com/photo-1483821838526-8d9756a6e1ed?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1930&q=80")
photo2 = URI.open("https://images.unsplash.com/photo-1560987617-6de57e3d0574?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1738&q=80")
photo3 = URI.open("https://images.unsplash.com/photo-1559424452-eeb3a13ffe2b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80")

offer = Offer.new(
  name: "Disco ball",
  description: "Make your houseparty special!",
  price: 30,
  address: "Pankow",
  category: "Entertainment"
)
offer.user = user

offer.photos.attach(io: photo1, filename: "discoball1.png", content_type: "image/png")
offer.photos.attach(io: photo2, filename: "discoball2.png", content_type: "image/png")
offer.photos.attach(io: photo3, filename: "discoball3.png", content_type: "image/png")
offer.save
p "Offer #{offer.id} created"

booking = Booking.new(
  review: Faker::Lorem.paragraph(sentence_count: 2),
  rating: [1, 2, 3, 4, 5].sample,
  start_date: "10-11-2022",
  end_date: "12-11-2022"
)
booking.user = User.second
booking.offer = offer
booking.save
p "Review #{booking.id} created"

booking = Booking.new(
  review: Faker::Lorem.paragraph(sentence_count: 2),
  rating: [1, 2, 3, 4, 5].sample,
  start_date: "15-11-2022",
  end_date: "17-11-2022"
)
booking.user = User.second
booking.offer = offer
booking.save
p "Review #{booking.id} created"




p "Seeding complete"
p "You now have #{User.count} users, #{Offer.count} offers, #{Booking.count} reviews."
