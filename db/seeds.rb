require "faker"

puts "Cleaning database..."
Citizenship.destroy_all
Place.destroy_all
User.destroy_all


# We need to create

user = User.new( name: "fred" )

puts 'Creating 10 random places...'
10.times do
  var = rand(1..2)
  if var == 1
  num = rand(1..50000000)
  elsif var == 2
  num = rand(1..5000000)
  end

  place = Place.new(
    name: Faker::Nation.capital_city,
    description: Faker::ChuckNorris.fact,
    min_income: num
  )
  place.user = user
  place.save!
end
puts 'Finished!'
