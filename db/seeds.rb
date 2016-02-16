# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#  Mayor.create(name: 'Emanuel', city: cities.first)
User.create([{name:'Israel Martinez',email:'marcemc@yahoo.com',password:"foobar", password_confirmation:"foobar"},
  {name:'Jose Gonzalez',email:'jegsaiz@hotmail.com',password:"foobar", password_confirmation:"foobar"},
  {name:'Chanchis Munchis',email:'yesibanner@gmail.com',password:"foobar", password_confirmation:"foobar"},
  {name:'John Doe',email:'johndoe@email.com',password:"foobar", password_confirmation:"foobar"},
  {name:'Monicus Villanus',email:'moverymartinez@yahoo.com',password:"foobar", password_confirmation:"foobar"}])

Product.create([{name: "Wyncode Blue Shirt", description: "Fantastic Week 2 Blue Shirt", price_in_cents: 2000},
  {name: "Wyncode Gray Shirt", description: "Head turning work of art.", price_in_cents: 2000},
  {name: "Black Wyncode Hat", description: "It's easier to get a Black American Express!", price_in_cents: 2500},
  {name: "Wyncode Sock ", description: "The only reason I wear shorts!", price_in_cents: 999},
  ])

Review.create([{comment:"It's awesome",product_id:1},
  {comment:"I like it",product_id:2},
  {comment:"I love it",product_id:2},
  {comment:"It's the best ever",product_id:3},
  {comment:"love it",product_id:4},
  {comment:"Ten out of ten",product_id:4},
  {comment:"Its pretty",product_id:3}
  ])
