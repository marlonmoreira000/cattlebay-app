Listing.destroy_all
Profile.destroy_all
User.destroy_all

u1 = User.create(email: "user1@gmail.com", password: "password1")
u2 = User.create(email: "user2@gmail.com", password: "password2")
u1.add_role :buyer
u2.add_role :seller

u1.listings.create(name: "spot", description: "a small blue heeler", price: 399, purchased: false)
u1.listings.create(name: "simba", description: "a small red heeler", price: 399, purchased: false)
u2.listings.create(name: "bonkers", description: "a big blue heeler", price: 299, purchased: false)
u2.listings.create(name: "willow", description: "a big red heeler", price: 299, purchased: false)

puts "Users: #{User.count}"
puts "Profiles: #{Profile.count}"
puts "Roles: #{Role.count}"
puts "Listings: #{Listing.count}"
