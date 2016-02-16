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

Product.create([{name: "Wyncode Blue Shirt", description: "Fantastic Week 2 Blue Shirt", price_in_cents: 2000, address: "http://i.imgur.com/502pkUc.jpg"},
  {name: "Wyncode Gray Shirt", description: "Head turning work of art.", price_in_cents: 2000, address: "http://i.imgur.com/4uwCdJ4.jpg"},
  {name: "Black Wyncode Hat", description: "It's easier to get a Black American Express!", price_in_cents: 2500, address: "http://i.imgur.com/ghH7bgr.jpg"},
  {name: "Wyncode Sock ", description: "The only reason I wear shorts!", price_in_cents: 999, address: "http://i.imgur.com/EdOaJDE.jpg"},
  ])

Review.create([{comment:"It's awesome.",product_id:1},
  {comment:"I like it",product_id:1},
  {comment:"My dog ate mine :(",product_id:1},
  {comment:"I wear it all the time.",product_id:1},
  {comment:"They're like Pokemons. Gotta have 'em all!",product_id:2},
  {comment:"Ten out of ten.",product_id:2},
  {comment:"Mine had a hole in the back.",product_id:2},
  {comment:"I like it",product_id:2},
  {comment:"I love it",product_id:3},
  {comment:"Black is back, baby!",product_id:3},
  {comment:"The best for when I'm coding for days on end and haven't showered",product_id:3},
  {comment:"Only for the elite!",product_id:3},
  {comment:"Nothing says love to code like these beauties.",product_id:4},
  {comment:"My feet have never been happier",product_id:4},
  {comment:"I can't wait for the Wyncode flip flops so I can wear them together.",product_id:4},
  {comment:"Need more colors!!!",product_id:4},

  ])
