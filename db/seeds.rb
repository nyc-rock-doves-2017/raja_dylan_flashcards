# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username:'me', email:'me@me.com', password:'password')

deck = Deck.create(name:'Study math')

30.times do
  Card.create(deck: deck, question: Faker::GameOfThrones.character, answer: 'answer')
end
