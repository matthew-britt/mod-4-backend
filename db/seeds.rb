# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'database_cleaner'

DatabaseCleaner.clean_with(:truncation)
# User.delete_all
# Service.delete_all
# ServiceUser.delete_all

center_point = { lat: 30.2672, lng: -97.7431 }

service_types = ["lawn service", "haircut", "toilet paper", "dog walking", "food delivery"]

25.times do 
    User.create(name: Faker::Name.name)
end

50.times do 
    Service.create(
    name: service_types.sample, 
    price: rand(3..30),
    provided_by: Faker::Name.name,
    phone: Faker::Base.numerify('(###) ###-####'),
    email: Faker::Internet.email,
    longitude: center_point[:lng] + rand(-0.10..0.10),
    latitude: center_point[:lat] + rand(-0.10..0.10)
    )
end

25.times do
    su = ServiceUser.new
    su.user = User.all.sample
    su.service = Service.all.sample
    su.save
end

