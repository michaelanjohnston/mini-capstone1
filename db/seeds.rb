 Supplier.create!(name: "HEB", email: "HEB@gmail.com", phone_number: "512-200-6689")
 Product.create!({supplier_id: 1, quantity: 1, name: "WNYX Mug", price: 2, description: "Get your morning news once you wake up with a cup of joe from... well Joe. He made it with his homemade duct tape"})

 Product.create!({supplier_id: 1, quantity: 1, name: "Hitchhiker's Guide to the Galaxy", price: 42, description: "In many of the more relaxed."})

 Product.create!({supplier_id: 1, quantity: 1, name: "Lightsaber", price: 270, description: "Part laser, part samurai sword, all awesome. The lightsaber is an elegant weapon for a more civilized age, not nearly as clumsy as a blaster"})

 Product.create!({supplier_id: 1, quantity: 1, name: "Space Cowboy Laser Gun", price: 170, description: "This weapon has no other description than, Shiney!"})

 Product.create!({supplier_id: 1, quantity: 1, name: "DnD Dice set", price: 57, description: "Take down mighty dragons with this timeless set of 20 sided wonders" })

 Product.create!({supplier_id: 1, quantity: 1, name: "Sonic Screwdriver", price: 9, description: "The Doctor's sciencey magic wand to get out of tight spots. Note: does not work on wood" })

 Product.create!({supplier_id: 1, quantity: 1, name: "Yoda sleeping bag", price: 40, description: "For real, this is for real!"})


 Image.create!(product_id: 2, url: "https://picsum.photos/seed/picsum/200/300" )

 Image.create!(product_id: 2, url: "https://picsum.photos/seed/picsum/200/300" )

 Image.create!(product_id: 2, url: "https://picsum.photos/seed/picsum/200/300" )

 Image.create!(product_id: 2, url: "https://picsum.photos/seed/picsum/200/300" )

 Image.create!(product_id: 2, url: "https://picsum.photos/seed/picsum/200/300" )

 Image.create!(product_id: 2, url: "https://picsum.photos/seed/picsum/200/300" )

 Image.create!(product_id: 2, url: "https://picsum.photos/seed/picsum/200/300" )


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
