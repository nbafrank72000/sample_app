# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#User.create!(name:  "Frank",
#             email: "nbafrank72000@gmail.com",
#             password:              "frank0508",
#             password_confirmation: "frank0508",
#             admin: true)

#User.create!(name:  "Ivy",
#             email: "ivychung0317@yahoo.com.tw",
#             password:              "800317",
#             password_confirmation: "800317")

#98.times do |n|
#  name  = Faker::Name.name
#  email = "example-#{n+1}@railstutorial.org"
#  password = "password"
#  User.create!(name:  name,
#               email: email,
#               password:              password,
#               password_confirmation: password)
#end
users = User.order(:created_at).take(2)
50.times do
  content = Faker::Lorem.sentence(5)
  users.each{ |user| user.microposts.create!(content: content) }
end