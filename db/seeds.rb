Listing.destroy_all
Profile.destroy_all
User.destroy_all

u1 = User.create(email: "user1@gmail.com", password: "password1")
u1.add_role :buyer
u2 = User.create(email: "user2@gmail.com", password: "password2")
u2.add_role :seller

l1 = u1.listings.create(name: "spot", description: Faker::Lorem.paragraph(sentence_count: 3), price: Faker::Number.between(from: 100, to: 500), purchased: false)
l1.picture.attach(io: File.open(Rails.root.join("app", "assets", "images", "dog1.jpg")), filename: 'dog1.jpg', content_type: "image/jpg")
l2 = u1.listings.create(name: "rusty", description: Faker::Lorem.paragraph(sentence_count: 3), price: Faker::Number.between(from: 100, to: 500), purchased: false)
l2.picture.attach(io: File.open(Rails.root.join("app", "assets", "images", "dog2.jpg")), filename: 'dog2.jpg', content_type: "image/jpg")
l3 = u1.listings.create(name: "johnny", description: Faker::Lorem.paragraph(sentence_count: 3), price: Faker::Number.between(from: 100, to: 500), purchased: false)
l3.picture.attach(io: File.open(Rails.root.join("app", "assets", "images", "dog3.jpg")), filename: 'dog3.jpg', content_type: "image/jpg")
l4 = u1.listings.create(name: "willow", description: Faker::Lorem.paragraph(sentence_count: 3), price: Faker::Number.between(from: 100, to: 500), purchased: false)
l4.picture.attach(io: File.open(Rails.root.join("app", "assets", "images", "dog4.jpg")), filename: 'dog4.jpg', content_type: "image/jpg")
l5 = u1.listings.create(name: "spike", description: Faker::Lorem.paragraph(sentence_count: 3), price: Faker::Number.between(from: 100, to: 500), purchased: false)
l5.picture.attach(io: File.open(Rails.root.join("app", "assets", "images", "dog5.jpg")), filename: 'dog5.jpg', content_type: "image/jpg")
l6 = u2.listings.create(name: "cheeky", description: Faker::Lorem.paragraph(sentence_count: 3), price: Faker::Number.between(from: 100, to: 500), purchased: false)
l6.picture.attach(io: File.open(Rails.root.join("app", "assets", "images", "dog6.jpg")), filename: 'dog6.jpg', content_type: "image/jpg")
l7 = u2.listings.create(name: "bob", description: Faker::Lorem.paragraph(sentence_count: 3), price: Faker::Number.between(from: 100, to: 500), purchased: false)
l7.picture.attach(io: File.open(Rails.root.join("app", "assets", "images", "dog7.jpg")), filename: 'dog7.jpg', content_type: "image/jpg")
l8 = u2.listings.create(name: "lucky", description: Faker::Lorem.paragraph(sentence_count: 3), price: Faker::Number.between(from: 100, to: 500), purchased: false)
l8.picture.attach(io: File.open(Rails.root.join("app", "assets", "images", "dog8.jpg")), filename: 'dog8.jpg', content_type: "image/jpg")
l9 = u2.listings.create(name: "harmony", description: Faker::Lorem.paragraph(sentence_count: 3), price: Faker::Number.between(from: 100, to: 500), purchased: false)
l9.picture.attach(io: File.open(Rails.root.join("app", "assets", "images", "dog9.jpg")), filename: 'dog9.jpg', content_type: "image/jpg")
l10 = u2.listings.create(name: "weedie", description: Faker::Lorem.paragraph(sentence_count: 3), price: Faker::Number.between(from: 100, to: 500), purchased: false)
l10.picture.attach(io: File.open(Rails.root.join("app", "assets", "images", "dog10.jpg")), filename: 'dog10.jpg', content_type: "image/jpg")

puts "Users: #{User.count}"
puts "Profiles: #{Profile.count}"
puts "Roles: #{Role.count}"
puts "Listings: #{Listing.count}"
