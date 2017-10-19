# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#create dummy test users:
user1 = User.create!(email:'user1@mail.com', password:'password123', password_confirmation:'password123')
user2 = User.create!(email:'user2@mail.com', password:'password123', password_confirmation:'password123')
user3 = User.create!(email:'user3@mail.com', password:'password123', password_confirmation:'password123')

#create dummy profiles for test users:
profile1 = Profile.create!(user: user1, home_location: 'Batemans Bay, NSW, Australia', name: 'Henry Ford')
profile2 = Profile.create!(user: user2, home_location: 'Melbourne, VIC, Australia', name: 'Ada Lovelace')
profile3 = Profile.create!(user: user3, home_location: 'Yirrkala, NT, Australia', name: 'Alan Turing')
