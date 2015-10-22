# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

100.times do
  Contact.create!(first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name)
end

contacts = Contact.all
1000.times do
  EmailAddress.create!(contact: contacts.sample,
      email_address: Faker::Internet.email,
      email_type: ["Home", "Work", "Other"].sample)
end
