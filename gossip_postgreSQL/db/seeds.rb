# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
10.times do
  user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::TvShows::HowIMetYourMother.quote, email: Faker::Internet.unique.email, age: rand(18..100), city_id:rand(1..10))
end

10.times do
  city = City.create!(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
end

20.times do
	gossip = Gossip.create!(title: Faker::Movies::HarryPotter.book, content: Faker::Quotes::Shakespeare.romeo_and_juliet_quote, user_id: rand(1..20))
end

10.times do
  tag = Tag.create!(title: Faker::Game.title)
end