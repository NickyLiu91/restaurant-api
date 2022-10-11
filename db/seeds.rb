# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

account1 = Account.create(name: "Account 1", email: "test1@gmail.com", phone: 1111111,
        rank: "manager", password: "testpassword")

restaurant1 = Restaurant.create(name: "Restaurant 1", location: "Narnia", account_id: account1.id)

order1 = Order.create(items: [{"chicken": 1.00 }, {"bread": 2.00}, {"Rice": 5.00}], restaurant_id: restaurant1.id)
