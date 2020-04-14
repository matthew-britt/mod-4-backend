# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

a = User.create(name: 'matt')
b = Service.create(name: 'haircut')
c = ServiceUser.create(user_id: 1, service_id: 1)

center_point = { lat: 30.2672, lng: -97.7431 }