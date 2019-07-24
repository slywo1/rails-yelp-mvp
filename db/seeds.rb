# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

20.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.unique.name,
    address: Faker::Address.unique.street_name,
    phone_number: rand(100_000_000_00..999_999_999_99),
    category: ['japanese', 'belgian', 'french', 'chinese', 'italian'].sample
    )
  restaurant.save!
end
