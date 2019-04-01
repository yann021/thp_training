# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

category = Category.create!([
  {
    title: "Weed",

  },
  {
    title: "Oil",

  }
])

items = Item.create!([
  {
    title: "Lemon AYS",
    description: "Le best du best! Ceci vous rendra créatif, mais ne guaranti pas une réussite en code...",
    price: 123,
    image_url: "<% image_tag 'product/hot_deals/weedhd.jpg' %>",
    category_id: 1
  },
  {
    title: "Polo Pogba",
    description: "Nous non plus ne connaissons pas les effets de cette huile magique, mais il paraît que vous allez adorer Aleks",
    price: 4,
    image_url: "<% image_tag 'product/hot_deals/oilhd.jpg' %>",
    category_id: 2
  }
])
