# This is where you can create initial data for your app.

require 'faker'

puts 'Removing all restaurants...'
Restaurant.destroy_all # "DELETE FROM restaurants"

# restaurants = Restaurant.all
# restaurants.each do |restaurant|
#  restaurant.destroy!
# end

puts 'Creating restaurants...'

100.times do
  # restaurant = Restaurant.new(
  #   name: Faker::Restaurant.name,
  #   address: Faker::Address.full_address,
  #   rating: Faker::Number.between(from: 0, to: 5) # [0..5].sample
  # )
  # restaurant.save!

  # Same as the above
  Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    rating: Faker::Number.between(from: 0, to: 5) # [0..5].sample
  )
end

# tour_d_argent = Restaurant.new(name: "La Tour d'Argent", rating: 2)
# tour_d_argent.save # return nil if doesn't succeed
# tour_d_argent.save! # raises an exception if doesn't succeed
# chez_gladines = Restaurant.new(name: "Chez Gladines", rating: 4)
# chez_gladines.save!

puts 'Finished!'
