# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#  Mayor.create(name: 'Emanuel', city: cities.first)
User.create([{name:'Israel Martinez',email:'marcemc@yahoo.com'}, {name:'Jose Gonzalez',email:'jegsaiz@hotmail.com'},{name:'Chanchis Munchis',email:'yesibanner@gmail.com'},{name:'John Doe',email:'johndoe@email.com'},{name:'Monicus Villanus',email:'moverymartinez@yahoo.com'}])
Product.create([{name: "Wyncode Blue Shirt", description: "Fantastic Week 2 Blue Shirt", price_in_cents: 2000}, {name: "Wyncode Gray Shirt", description: "Head turning work of art.", price_in_cents: 2000},{name: "Black Wyncode Hat", description: "It's easier to get a Black American Express!", price_in_cents: 2500},{name: "Frisky Radio ", description: "The best music you'll ever listen to!"}])


#,password:'Password1',password:'Wyncode2016',password:'Wyncode2015',password:'johndoerocks',password:'maleficus'
