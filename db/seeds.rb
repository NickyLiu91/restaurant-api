# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

account1 = Account.create(name: "Admin Account", email: "admin@gmail.com", phone: 1111111,
        rank: "Admin", password: "aaa")
account2 = Account.create(name: "Owner 1", email: "owner1@gmail.com", phone: 2222222,
        rank: "Owner", password: "bbb")
account3 = Account.create(name: "Owner 2", email: "owner2@gmail.com", phone: 3333333,
        rank: "Owner", password: "ccc")
account4 = Account.create(name: "Employee 1", email: "employee1@gmail.com", phone: 4444444,
        rank: "Employee", password: "ddd", restaurant_id: 1)

restaurant1 = Restaurant.create(name: "Restaurant 1", location: "Narnia", account_id: account2.id)
restaurant2 = Restaurant.create(name: "Restaurant 2", location: "Mordor", account_id: account3.id)
restaurant3 = Restaurant.create(name: "Restaurant 3", location: "Mordoria", account_id: account3.id)

menuItem1 = Menuitem.create(name: "Chicken", image: "chicken.png", price: 5.00, restaurant_id: restaurant1.id)
menuItem2 = Menuitem.create(name: "Burger", image: "burger.png", price: 2.00, restaurant_id: restaurant1.id)
menuItem3 = Menuitem.create(name: "Pizza", image: "pizza.png", price: 20.00, restaurant_id: restaurant1.id)

menuItem4 = Menuitem.create(name: "Candy", image: "candy.png", price: 1.00, restaurant_id: restaurant2.id)
menuItem5 = Menuitem.create(name: "Pasta", image: "pasta.png", price: 15.00, restaurant_id: restaurant2.id)
menuItem6 = Menuitem.create(name: "Soup", image: "soup.png", price: 3.00, restaurant_id: restaurant2.id)
menuItem7 = Menuitem.create(name: "Chicken", image: "chicken.png", price: 55.00, restaurant_id: restaurant2.id)

# table1 = Account.create(name: "Table 1", rank: "table", password: "aaa", restaurant_id: restaurant1.id)
# table2 = Account.create(name: "Table 2", rank: "table", password: "bbb", restaurant_id: restaurant1.id)
# table3 = Account.create(name: "Table 3", rank: "table", password: "ccc", restaurant_id: restaurant2.id)

order1 = Order.create(orderItems: [{id: 1, name: "Chicken", price: 5.00, status: "Not Started"}, {id: 2, name: "Chicken", price: 5.00, status: "Not Started"}, {id: 3, name: "Pizza", price: 20.00, status: "Not Started"}], restaurant_id: restaurant1.id, location: "restaurant", totalPrice: 30.00, status: "Not Started")
order2 = Order.create(orderItems: [{id: 4, name: "Burger", price: 2.00, status: "Not Started"}, {id: 5, name: "Burger", price: 2.00, status: "Not Started"}, {id: 6, name: "Pizza", price: 20.00, status: "Not Started"}], restaurant_id: restaurant1.id, location: "restaurant", totalPrice: 24.00, status: "Not Started")
order2 = Order.create(orderItems: [{id: 7, name: "Pizza", price: 20.00, status: "Not Started"}, {id: 8, name: "Pizza", price: 20.00, status: "Not Started"}], restaurant_id: restaurant1.id, location: "online", totalPrice: 40.00, status: false)

order3 = Order.create(orderItems: [{id: 9, name: "Candy", price: 1.00, status: "In Progress"}, {id: 10, name: "Candy", price: 1.00, status: "In Progress"}], restaurant_id: restaurant2.id, location: "restaurant", totalPrice: 22.00, status: "In Progress")
order4 = Order.create(orderItems: [{id: 11, name: "Pasta", price: 15.00, status: "Complete"}, {id: 12, name: "Soup", price: 3.00, status: "Complete"}], restaurant_id: restaurant2.id, location: "online", totalPrice: 8.00, status: "Complete")



# LOGIN
# fetch(`http://localhost:3000/api/login`, {
#    method: 'POST',
#    headers: {
#       'Content-Type': 'application/json',
#       'Accept': 'application/json'
#    },
#    body: JSON.stringify(
#    {
#      account: {
#         name: "Admin Account",
#         password: "aaa"
#      }
#    }
#   )
# })
# .then(res => res.json())
# .then(json => {localStorage.setItem('jwt', json.jwt)})


# GET ALL ACCOUNTS
# fetch('http://localhost:3000/api/accounts', {
#    method: 'GET',
#    headers: {
#       Authorization: `Bearer ${localStorage.getItem('jwt')}`
#    }
# })
# .then(res => res.json())
# .then(json => {console.log(json)})


# GET ALL RESTAURANTS
# fetch('http://localhost:3000/api/restaurants', {
#    method: 'GET',
#    headers: {
#       Authorization: `Bearer ${localStorage.getItem('jwt')}`
#    }
# })
# .then(res => res.json())
# .then(json => {console.log(json)})


# GET ALL ORDERS
# fetch('http://localhost:3000/api/orders', {
#    method: 'GET',
#    headers: {
#       Authorization: `Bearer ${localStorage.getItem('jwt')}`
#    }
# })
# .then(res => res.json())
# .then(json => {console.log(json)})



#CREATE MANAGER
# fetch(`http://localhost:3000/api/accounts`, {
#    method: 'POST',
#    headers: {
#       'Content-Type': 'application/json',
#       'Accept': 'application/json'
#    },
#    body: JSON.stringify(
#    {
#      account: {
#         name: "Account 3",
#         email: "test@gmail.com",
#         phone: 7777777,
#         rank: "manager",
#         password: "ccc"
#      }
#    }
#   )
# })
# .then(res => res.json())
# .then(json => {localStorage.setItem('jwt', json.jwt)})


# CREATE TABLE
# fetch(`http://localhost:3000/api/accounts`, {
#    method: 'POST',
#    headers: {
#       'Content-Type': 'application/json',
#       'Accept': 'application/json'
#    },
#    body: JSON.stringify(
#    {
#      account: {
#         name: "table5",
#         rank: "table",
#         password: "444",
#         restaurant_id: 1
#      }
#    }
#   )
# })
# .then(res => res.json())
# .then(json => {localStorage.setItem('jwt', json.jwt)})


# CREATE RESTAURANT
# fetch(`http://localhost:3000/api/restaurants`, {
#    method: 'POST',
#    headers: {
#       'Content-Type': 'application/json',
#       'Accept': 'application/json',
#        Authorization: `Bearer ${localStorage.getItem('jwt')}`
#    },
#    body: JSON.stringify(
#    {
#         name: "Restaurant 2",
#         location: "Magic Land",
#         account_id: 2
#    }
#   )
# })


#CREATE ORDER
# fetch(`http://localhost:3000/api/orders`, {
#    method: 'POST',
#    headers: {
#       'Content-Type': 'application/json',
#       'Accept': 'application/json',
#        Authorization: `Bearer ${localStorage.getItem('jwt')}`
#    },
#    body: JSON.stringify(
#    {
#         items: [{"chicken": 5.00}, {"ham": 3.00}],
#         restaurant_id: 2
#    }
#   )
# })
