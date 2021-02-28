# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Airport.delete_all

airports = Airport.create([
  { code: 'SFO' },
  { code: 'NYC' }
])

flights = Flight.create([
  { from_airport_id: airports.first.id, to_airport_id: airports.last.id, duration: 320, scheduled_on: "2021-10-21 07:00:00"},
  { from_airport_id: airports.first.id, to_airport_id: airports.last.id, duration: 320, scheduled_on: "2021-10-22 08:00:00"},
  { from_airport_id: airports.first.id, to_airport_id: airports.last.id, duration: 320, scheduled_on: "2021-10-23 09:00:00"},
  { from_airport_id: airports.last.id, to_airport_id: airports.first.id, duration: 385, scheduled_on: "2021-10-24 10:00:00"},
  { from_airport_id: airports.last.id, to_airport_id: airports.first.id, duration: 385, scheduled_on: "2021-10-25 11:00:00"},
  { from_airport_id: airports.last.id, to_airport_id: airports.first.id, duration: 385, scheduled_on: "2021-10-26 12:00:00"}
])


