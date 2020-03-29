# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cocktail.delete_all
Dose.delete_all
Ingredient.delete_all

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")

Cocktail.create!(name: "Singapore Slinger1")
Cocktail.create!(name: "Singapore Slinger2")
Cocktail.create!(name: "Singapore Slinger3")
Cocktail.create!(name: "Singapore Slinger4")
Cocktail.create!(name: "Singapore Slinger5")
Cocktail.create!(name: "Singapore Slinger6")
Cocktail.create!(name: "Singapore Slinger7")
Cocktail.create!(name: "Singapore Slinger8")
Cocktail.create!(name: "Singapore Slinger9")
Cocktail.create!(name: "Singapore Slinger10")
Cocktail.create!(name: "Singapore Slinger11")
Cocktail.create!(name: "Singapore Slinger12")
Cocktail.create!(name: "Singapore Slinger13")
