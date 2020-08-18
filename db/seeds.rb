require "faker"

puts "Cleaning database..."
Citizenship.destroy_all
Place.destroy_all
User.destroy_all

place_num = 0

user = User.new( name: "fred",email: "fred@gmail.com", password: "plouplou93" )
user.save
puts 'Creating 10 random places...'
10.times do
  place_num += 1

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
  file = "../airbnb-tax-haven/app/assets/images/place#{place_num}.jpg"

  place.thumbnail.attach(io: File.open(file), filename: 'nes.png', content_type: 'image/jpg')

  place.user = user
  place.save!
end
puts 'Finished!'
