require "faker"

puts 'Creating 10 random places...'
10.times do
  place = Place.new(
    name: Faker::Nation.capital_city,
    description: Faker::ChuckNorris.fact
  )
  place.save!
end
puts 'Finished!'
