# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#Make

chevy = Make.create!(model: 'Corvette', year: 2017, color: 'Yellow')
honda = Make.create!(model: 'Accord', year: 2016, color: 'Black')
mazda = Make.create!(model: 'CX-5', year: 2018, color: 'Gray')
mercedes_benz = Make.create!(model: 'Sedan', year: 2013, color: 'Red')
toyota = Make.create!(model: 'Camry', year: 2017, color: 'White')
ford = Make.create!(model: 'Fusion', year: 2017, color: 'Blue')

#dealers

new_york = Dealer.create!(city: 'New York', address: '12 ave and 42nd street')
florida = Dealer.create!(city: 'Miami', address: '3275 NW 24th Street Rd ')
california = Dealer.create!(city: 'Los Angeles', address: '4114 State Street')
michigan = Dealer.create!(city: 'Detroit', address: '1599 Bartlett Avenue')
conneticut = Dealer.create!(city: 'New Haven', adress: '2181 Lochmere Lane')
pensylvania = Dealer.create!(city: 'Philadelphia', address: '546 Stuart Street')
texas = Dealer.create!(city: 'Dallas', address: '3416 Charla Lane')
georgia = Dealer.create!(city: 'Atlanta', address: '2300 Windy Ridge Pkwy')
nevada = Dealer.create!(city: 'Las Vegas', address: '1865 Sunrise Road')
