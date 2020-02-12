# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Appetizer.destroy_all
Menu.destroy_all
Table.destroy_all
Restaurant.destroy_all
User.destroy_all
Command.destroy_all








puts "creating new users"

nono = User.new(email: 'remi.cordo@gmail.com', password: 'azerty')
nono.save

olivier = User.new(email: 'olivier@gmail.com', password: 'azerty')
olivier.save

puts "creating new restaurant"
user_array = User.all

chez_nono = Restaurant.new(email: 'Nono.cordo@gmail.com', name: 'Nono', phone_number: '0643213243', address: 'Lille', description: "un resto a la <nono></nono>")
chez_nono.user = nono
chez_nono.save

puts "creating table"

nono_1 = Table.new(number: 1)
nono_1.restaurant = chez_nono
nono_1.save

puts "creating Menu"

nono_menu = Menu.new(restaurant: chez_nono)
nono_menu.save


# puts "creating Appetizer"


# Drink.create!(name: 'Anosteke', price: '5.00', menu_id: 1, category: 'alcool', photo: 'anosteke.png' )
# Drink.create!(name: 'Leffe 25 Cl', price: '5.00', menu_id: 1, category: 'alcool', photo: 'Leffe.png' )
# Drink.create!(name: 'Leffe 50 Cl', price: '5.00', menu_id: 1, category: 'alcool', photo: 'Leffe.png' )
# Drink.create!(name: 'Gulden Draak 33 Cl', price: '5.00', menu_id: 1, category: 'alcool', photo: 'Gulden.png' )
# Drink.create!(name: 'Paix Dieux 50 Cl', price: '5.00', menu_id: 1, category: 'alcool', photo: 'paixdieux.png' )
# Drink.create!(name: '3 monts 33 Cl', price: '5.00', menu_id: 1, category: 'alcool', photo:'3monts.png' )
# Drink.create!(name: "Ch'ti", price: '5.00', menu_id: 1, category: 'alcool', photo: 'chti.png' )
# Drink.create!(name: 'Coca Cola zero', price: '5.00', menu_id: 1, category: 'soft', photo: 'cocazero.gif' )
# Drink.create!(name: 'Coca Cola light', price: '5.00', menu_id: 1, category: 'soft', photo: 'cocalight.png' )
# Drink.create!(name: 'Oasis', price: '5.00', menu_id: 1, category: 'soft', photo: 'oasis.png' )
# Drink.create!(name: 'Ice Tie', price: '5.00', menu_id: 1, category: 'soft', photo: 'c' )
# Drink.create!(name: 'Perrier', price: '5.00', menu_id: 1, category: 'soft', photo: 'perrier.png' )
# Drink.create!(name: 'Evian', price: '5.00', menu_id: 1, category: 'soft', photo: 'evian.png' )
# Drink.create!(name: 'Jus de tomate', price: '5.00', menu_id: 1, category: 'soft', photo: 'granini.png' )
# Drink.create!(name: 'Jus de Ananas', price: '5.00', menu_id: 1, category: 'soft', photo: 'granini.png' )
# Drink.create!(name: 'Jus de Pomme', price: '5.00', menu_id: 1, category: 'soft', photo: 'granini.png' )
# Drink.create!(name: 'Jus de Orane', price: '5.00', menu_id: 1, category: 'soft', photo: 'granini.png' )
# Drink.create!(name: 'Chocolat chaud', price: '5.00', menu_id: 1, category: 'HotDrink', photo: 'chocochaud.png' )
# Drink.create!(name: 'Expresso', price: '5.00', menu_id: 1, category: 'HotDrink', photo: 'espreso.png' )
# Drink.create!(name: 'Café Viennois', price: '5.00', menu_id: 1, category: 'HotDrink', photo: 'cafeviennois.png' )
# Drink.create!(name: 'Café au lait', price: '5.00', menu_id: 1, category: 'HotDrink', photo: 'cafeaulait.png' )
# Drink.create!(name: 'Café allongé', price: '5.00', menu_id: 1, category: 'HotDrink', photo: 'cafeallonge.png' )
# Drink.create!(name: 'Chocolat Viennois', price: '5.00', menu_id: 1, category: 'HotDrink', photo: 'chocolatviennois.png' )


# puts "create command"

# command_1 = Command.create!(table: nono_1, user: olivier)
# command_1.save






