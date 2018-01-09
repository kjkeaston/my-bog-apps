# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Creature.delete_all

seeded_creature = [
  {
    name: "Spike", 
    description: "Angry mutt", 
    age: 6
  },
  {
    name: "Rover", 
    description: "Friendly dog", 
    age: 3
  },
  {
    name: "Grover", 
    description: "Grumpy cat", 
    age: 5
  }
]

seeded_creature.each do |creature|
  Creature.create(creature)
end



# Creature.create([
#   {
#     name: "Spike", 
#     description: "Angry mutt", 
#     age: 6
#   },
#   {
#     name: "Rover", 
#     description: "Friendly dog", 
#     age: 3
#   },
#   {
#     name: "Grover", 
#     description: "Grumpy cat", 
#     age: 5
#   }
# ])

puts "all creatures created!"