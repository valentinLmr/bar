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

nattan = User.new(email: 'nattan@gmail.com', password: 'azerty')
nattan.save

florian = User.new(email: 'florian@gmail.com', password: 'azerty')
florian.save

mathieu = User.new(email: 'mathieu@gmail.com', password: 'azerty')
mathieu.save

antoine = User.new(email: 'antoine@gmail.com', password: 'azerty')
antoine.save

anouck = User.new(email: 'anouck@gmail.com', password: 'azerty')
anouck.save

adrien = User.new(email: 'adrien@gmail.com', password: 'azerty')
adrien.save

maxence = User.new(email: 'maxence@gmail.com', password: 'azerty')
maxence.save

cesar = User.new(email: 'cesar@gmail.com', password: 'azerty')
cesar.save

hubert = User.new(email: 'hubert@gmail.com', password: 'azerty')
hubert.save

julien = User.new(email: 'julien@gmail.com', password: 'azerty')
julien.save


puts "creating new restaurant"
user_array = User.all

chez_nono = Restaurant.new(email: 'nono@gmail.com', name: 'Terrasse Camphinoise', phone_number: '0643213243', address: 'Lille', number_of_table: 10, description: "Café de village, ambiance chaude et familiale")
chez_nono.user = nono
chez_nono.save

alpage = Restaurant.new(email: 'adrien@gmail.com', name: 'alpage', phone_number: '0643213243', address: 'Blandain', number_of_table: 10, description: "Brasserie Belge avec plus de 700 bières")
alpage.user = adrien
alpage.save

saighin = Restaurant.new(email: 'maxence@gmail.com', name: 'Au ptitvsaighin', phone_number: '0643213243', address: 'Saignhin', number_of_table: 10, description: "Restaurant à viande")
saighin.user = maxence
saighin.save

marie = Restaurant.new(email: 'mathieu@gmail.com', name: 'marie', phone_number: '0643213243', address: 'Whannehain', number_of_table: 10, description: "Bar/snack de village")
marie.user = mathieu
marie.save

vieux = Restaurant.new(email: 'julien@gmail.com', name: 'vieux de la vieille', phone_number: '0643213243', address: 'Blandain', number_of_table: 10, description: "Brasserie Belge avec plus de 700 bières")
vieux.user = julien
vieux.save

puts "creating table"

restaurants = Restaurant.all


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
# Drink.create!(name: 'Ice Tie', price: '5.00', menu_id: 1, category: 'soft', photo: 'icetea.png' )
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






