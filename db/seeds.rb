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

nono = User.create!(email: 'remi.cordo@gmail.com', password: 'azerty')
nono.save!

olivier = User.create!(email: 'olivier@gmail.com', password: 'azerty')
olivier.save!

puts "creating new restaurant"
user_array = User.all

chez_nono = Restaurant.create!(email: 'Nono.cordo@gmail.com', name: 'Nono', phone_number: '0643213243', user: nono)
chez_nono.save!

puts "creating table"

nono_1 = Table.create!(number: 1)
nono_1.save

puts "creating Menu"

nono_menu = Menu.create!(restaurant: chez_nono, table: nono_1)
nono_menu.save!


puts "creating Appetizer"


Drink.create!(name: 'Anosteke', price: '5.00', menu_id: 1)
Drink.create!(name: 'Leffe 25 Cl', price: '5.00', menu_id: 1)
Drink.create!(name: 'Leffe 50 Cl', price: '5.00', menu_id: 1)
Drink.create!(name: 'Gulden Draak 33 Cl', price: '5.00', menu_id: 1)
Drink.create!(name: 'Paix Dieux 50 Cl', price: '5.00', menu_id: 1)
Drink.create!(name: '3 monts 33 Cl', price: '5.00', menu_id: 1)
Drink.create!(name: "Ch'ti", price: '5.00', menu_id: 1)
Drink.create!(name: 'Coca Cola zero', price: '5.00', menu_id: 1)
Drink.create!(name: 'Coca Cola light', price: '5.00', menu_id: 1)
Drink.create!(name: 'Oasis', price: '5.00', menu_id: 1)
Drink.create!(name: 'Ice Tie', price: '5.00', menu_id: 1)
Drink.create!(name: 'Perrier', price: '5.00', menu_id: 1)
Drink.create!(name: 'Evian', price: '5.00', menu_id: 1)
Drink.create!(name: 'Jus de tomate', price: '5.00', menu_id: 1)
Drink.create!(name: 'Jus de Ananas', price: '5.00', menu_id: 1)
Drink.create!(name: 'Jus de Pomme', price: '5.00', menu_id: 1)
Drink.create!(name: 'Jus de Orane', price: '5.00', menu_id: 1)
Drink.create!(name: 'Jus de ACE', price: '5.00', menu_id: 1)


puts "create command"

command_1 = Command.create!(table: nono_1, user: olivier)
command_1.save






