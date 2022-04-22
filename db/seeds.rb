# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

10.times do
  Country.create(
    name: Faker::Address.country,
    native_name: Faker::Address.country,
    population: rand(1.0..100000000.00),
    region: Faker::Address.state,
    sub_region: Faker::Address.state_abbr,
    capital: Faker::Address.city,
    tld: Faker::Address.country_by_code,
    currencies: Faker::Currency.name,
    languages: Faker::ProgrammingLanguage.name,
    border_countries: Faker::Address.country
  )
end