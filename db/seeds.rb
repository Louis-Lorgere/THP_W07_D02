# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Attendance.destroy_all
Event.destroy_all
User.destroy_all

2.times do
  # User.create(email: Faker::Internet.email(domain: 'yopmail.com'), last_name: Faker::Name.last_name, first_name: Faker::Name.first_name, encrypted_password: Faker::Lorem.characters(number: rand(6..13)), description: Faker::Lorem.paragraph(sentence_count: 2))
  User.create! :first_name => Faker::Name.first_name, :last_name => Faker::Name.last_name, :description => Faker::Lorem.paragraph(sentence_count: 2), :email => Faker::Internet.email(domain: 'yopmail.com'), :password => 'topsecret', :password_confirmation => 'topsecret'
end

10.times do 
  Event.create(start_date: DateTime.new(2021,12,rand(1..31),12), duration: 30, description: Faker::Lorem.paragraph(sentence_count: 2), price: 50, location: "wherever", title: Faker::Movie.title, admin_id: User.all.sample(1).first.id)
end