# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Listing.destroy_all
Profile.destroy_all
User.destroy_all

u1 = User.create(email: "user1@gmail.com", password: "password1")
u2 = User.create(email: "user2@gmail.com", password: "password2")
u1.add_role :buyer
u2.add_role :seller

p1 = Profile.create(user_id: u1.id)
p2 = Profile.create(user_id: u2.id)

# p1 = Profile.create(user_id: User.create(email: "user1@gmail.com", password: "password1").id)
# p2 = Profile.create(user_id: User.create(email: "user2@gmail.com", password: "password2").id)

p1.listings.create(name: "spot", description: "a small blue heeler", price: 399, purchased: false)
p1.listings.create(name: "simba", description: "a small red heeler", price: 399, purchased: false)
p2.listings.create(name: "bonkers", description: "a big blue heeler", price: 299, purchased: false)
p2.listings.create(name: "willow", description: "a big red heeler", price: 299, purchased: false)

puts "Users: #{User.count}"
puts "Profiles: #{Profile.count}"
puts "Roles: #{Role.count}"
puts "Listings: #{Listing.count}"