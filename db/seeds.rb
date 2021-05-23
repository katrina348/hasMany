# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Planet.destroy_all
Moon.destroy_all

@id_num = 0

5.times do
  @id_num += 1
  p = Planet.create(name: Faker::Space.planet, galaxy: Faker::Space.galaxy)
    5.times do
      Moon.create(name: Faker::Space.moon, planet_id: p.id)
    end
end

puts "Planets created"