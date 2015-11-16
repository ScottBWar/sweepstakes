# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

12.times do |t|
Contestant.create({firstname: Faker::Name.first_name, lastname:Faker::Name.last_name, email:Faker::Internet.email, birthday:Faker::Date.backward(9000), zipcode:Faker::Address.zip, provider:Faker::Company.name})
end