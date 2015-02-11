# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Restaurant.destroy_all
categories = ["chinese", "italian", "japanese", "french", "belgian"]


5.times  do
  restaurant = Restaurant.new({
    name: Faker::Company.name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    category: categories.sample,
    phone_number: Faker::PhoneNumber.phone_number,
    })
  restaurant.save
end

