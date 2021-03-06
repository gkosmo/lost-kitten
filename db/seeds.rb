# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do
  Kitty.create(
    name: Faker::Name.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number,
    found_on: Faker::Date.between(from: 2.years.ago, to: Date.today),
    species: Kitty::SPECIES.sample
    )
end
