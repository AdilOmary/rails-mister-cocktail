# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient.create(name: 'rum')
Ingredient.create(name: 'soda')
Ingredient.create(name: 'lime')
Ingredient.create(name: 'curshed ice')
Ingredient.create(name: 'brown sugar')
Ingredient.create(name: 'fresh mint leaves')
Ingredient.create(name: 'gin')
Ingredient.create(name: 'tonic water')
Ingredient.create(name: 'cucumber')
Ingredient.create(name: 'ice cubes')
Ingredient.create(name: 'man juice')
Ingredient.create(name: 'aperol')
Ingredient.create(name: 'prosecco')
Ingredient.create(name: 'cachaca')
Ingredient.create(name: 'ginger beer')
Ingredient.create(name: 'whiskey')
Ingredient.create(name: 'sugar cane syrup')
Ingredient.create(name: 'lime juice')
Ingredient.create(name: 'beard sweat')
Ingredient.create(name: 'cinnamon sticks')
Ingredient.create(name: 'honey')
Ingredient.create(name: 'orange juice')
Ingredient.create(name: 'forehead oil')
Ingredient.create(name: 'lemon')

Cocktail.create(name: 'Finger Licker')
Cocktail.create(name: 'Toe Jam')
Cocktail.create(name: '10 dollar watered down rum N\'coke')
Cocktail.create(name: 'Mississippi Missionary')
Cocktail.create(name: 'Pennsylvania Pulverizer')
Cocktail.create(name: 'Tokyo Sour Soda')
Cocktail.create(name: 'Minnesota Mormon')
Cocktail.create(name: 'California Cauliflower')
Cocktail.create(name: 'Osaka Orange-y')

Cocktail.all.each do |cocktail|
  2.times do
    Dose.create(ingredient: Ingredient.all.sample, cocktail: cocktail, description: "#{(1..5).to_a.sample} shots")
  end
end
