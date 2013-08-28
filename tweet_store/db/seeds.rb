# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Item.create(name: "The Fellowship of the Ring", description: "The Fellowship sets out on their Quest", price: "$10")
Item.create(name: "The Two Towers", description: "The second part focuses on Orthanc and Minas Morgul", price: "$10")
Item.create(name: "The Return of the King", description: "The King returns to Gondor", price: "$10")
Item.create(name: "The Hobbit", description: "Bilbo sets out on a Quest with 13 dwarves", price: "$8")