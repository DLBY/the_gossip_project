# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'



10.times do
  city_id = City.create!(
    name:Faker::Address.city,
    zip_code:Faker::Address.zip_code 
  )
end

10.times do
  user = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.name,
    description: Faker::Company.bs,
    email:Faker::Internet.email,
    age:Faker::Number.between(from: 16, to: 80),
    city_id: City.all.sample.id
  )
end



20.times do
  gossip = Gossip.create!(
    title:Faker::Book.title,
    content:Faker::Quote.matz,
    user_id: User.all.sample.id
  )
end


10.times do
  tag = Tag.create!(
    title:Faker::Books::CultureSeries.civ 
  )
  end