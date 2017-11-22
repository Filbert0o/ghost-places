# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Example:
#
#   Person.create(first_name: 'Eric', last_name: 'Kelly')

10.times do
  Ghost.create(name: Faker::DragonBall.character)
end

15.times do
  Place.create(name: Faker::Address.community)
end

25.times do
  Victim.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    ghost_id: Random.rand(1..10),
    place_id: Random.rand(1..15)
  )
end

25.times do
  Haunt.create(
    ghost_id: Random.rand(1..10),
    place_id: Random.rand(1..15)
  )
end
