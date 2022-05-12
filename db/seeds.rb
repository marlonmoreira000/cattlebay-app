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

p1 = Profile.create(user_id: User.create(email: "user1@gmail.com", password: "password1").id)
p2 = Profile.create(user_id: User.create(email: "user2@gmail.com", password: "password2").id)
p3 = Profile.create(user_id: User.create(email: "user3@gmail.com", password: "password3").id)

p1.listings.create(name: "spot", description: "a small blue heeler", price: 399, purchased: false)
p1.listings.create(name: "simba", description: "a small red heeler", price: 399, purchased: false)
p2.listings.create(name: "bonkers", description: "a big blue heeler", price: 299, purchased: false)
p2.listings.create(name: "willow", description: "a big red heeler", price: 299, purchased: false)
p3.listings.create(name: "cheeky", description: "a small working dog", price: 500, purchased: false)
p3.listings.create(name: "oscar", description: "a big working dog", price: 500, purchased: false)


