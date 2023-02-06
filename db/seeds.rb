require 'faker'

# This is where you can create initial data for your app.

# Remove all the restaurants in the DB
puts 'Removing all restaurants...'
Restaurant.destroy_all

puts "Creating 100 restaurants..."
90000.times do
  name = Faker::Restaurant.name
  puts "Creating #{name}..."

  rest = Restaurant.new(
    name: name,
    address: Faker::Address.street_address,
    rating: rand(0..5)
  )

  rest.save # returns true or false
end

puts "DONE! 🎉"
