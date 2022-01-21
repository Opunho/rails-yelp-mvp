require 'faker'

puts 'Clearing data'
Restaurant.destroy_all
puts 'All restaurants erased'

puts 'Creating restaurants'
100.times do
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    category: Restaurant::CATEGORY.sample,
    phone_number: Faker::PhoneNumber.cell_phone
  )
  puts "Created #{restaurant.id} - #{restaurant.name}"
end

puts 'Done!'
