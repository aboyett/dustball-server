# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
start = Time.now - 500
pm1_0 = 0
pm2_5 = 0
pm10_0 = 0

[1.. 500].each do |i|
  Sample.create(created_at: start, pm1: pm1_0, pm25: pm2_5, pm10: pm10_0)
  start += 1

  pm1_0 -= 5
  pm1_0 += rand(10)
  pm1_0 = 0 if pm1_0 < 0

  pm2_5 -= 5
  pm2_5 += rand(10)
  pm2_5 = 0 if pm2_5 < 0

  pm10_0 -= 5
  pm10_0 += rand(10)
  pm10_0 = 0 if pm10_0 < 0
end
