# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Creature.delete_all

creatures_seed = [
  {
    name: "Yoda",
    description: "Little green man",
    age: 800
  },
  {
    name: "Luke Skywalker",
    description: "The last jedi",
    age: 45
  },
  {
    name: "Darth Maul",
    description: "Coolest sith",
    age: 50
  }
]

creatures_seed.each do |creature|
  Creature.create(creature)
end

puts "Seeded some star wars"
