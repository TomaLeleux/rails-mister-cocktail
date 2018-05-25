# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "json"
require "rest-client"

# TODO: Write a seed to insert 10 posts in the database fetched from the Hacker News API.
response = RestClient.get "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
ingredients = JSON.parse(response)

ingredients["drinks"].each do |ingredient|
  ingredient = Ingredient.new(name: ingredient["strIngredient1"])
  ingredient.save!
end

(1..20000).each do |i|
  response = RestClient.get "https://www.thecocktaildb.com/api/json/v1/1/lookup.php?i=#{i}"
  ingredients = JSON.parse(response)

  cocktails["drinks"].each do |cocktail|
    cocktail = Cocktail.new(name: cocktail["strDrink"])
    ingredient.save!
  end
end
