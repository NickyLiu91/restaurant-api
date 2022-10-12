# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

account1 = Account.create(name: "Admin Account", email: "test1@gmail.com", phone: 1111111,
        rank: "admin", password: "aaa")
account2 = Account.create(name: "Account 2", email: "test2@gmail.com", phone: 2222222,
        rank: "owner", password: "bbb")

restaurant1 = Restaurant.create(name: "Restaurant 1", location: "Narnia", account_id: account1.id)
restaurant2 = Restaurant.create(name: "Restaurant 2", location: "Mordor", account_id: account2.id)

menuItem1 = Menuitem.create(name: "Chicken", price: 5.00, restaurant_id: restaurant1.id)
menuItem2 = Menuitem.create(name: "Burger", price: 2.00, restaurant_id: restaurant1.id)
menuItem3 = Menuitem.create(name: "Pizza", price: 20.00, restaurant_id: restaurant1.id)

menuItem4 = Menuitem.create(name: "Candy", price: 1.00, restaurant_id: restaurant2.id)
menuItem5 = Menuitem.create(name: "Pasta", price: 15.00, restaurant_id: restaurant2.id)
menuItem6 = Menuitem.create(name: "Soup", price: 3.00, restaurant_id: restaurant2.id)

order1 = Order.create(restaurant_id: restaurant1.id)
order2 = Order.create(restaurant_id: restaurant1.id)

order3 = Order.create(restaurant_id: restaurant2.id)
order4 = Order.create(restaurant_id: restaurant2.id)

orderItem1 = Orderitem.create(order_id: order1.id, name: "Chicken", price: 5.00)
orderItem2 = Orderitem.create(order_id: order1.id, name: "Burger", price: 2.00)
orderItem3 = Orderitem.create(order_id: order1.id, name: "Pizza", price: 20.00)
orderItem4 = Orderitem.create(order_id: order2.id, name: "Pizza", price: 20.00)
orderItem5 = Orderitem.create(order_id: order2.id, name: "Pizza", price: 20.00)

orderItem6 = Orderitem.create(order_id: order3.id, name: "Candy", price: 1.00)
orderItem7 = Orderitem.create(order_id: order4.id, name: "Pasta", price: 15.00)
orderItem8 = Orderitem.create(order_id: order4.id, name: "Soup", price: 3.00)
