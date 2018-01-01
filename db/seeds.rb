# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'jumpjudo3303@gmail.com', password: 'jumpjumpjump3303', password_confirmation: 'jumpjumpjump3303')
# AdminUser.create!(email: 'jumpjudo3303@gmail.com', password: 'jumpjumpjump3303', password_confirmation: 'jumpjumpjump3303') if Rails.env.development?
