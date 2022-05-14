# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

chocopiepie = Product.create!(
  product_brand: "Choco",
  product_name: "Chocopie",
  product_description: "Yummy!",
  product_image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/LOTTE_-_CHOCO_PIE.jpg/1280px-LOTTE_-_CHOCO_PIE.jpg",
)

ProductType.create!([
  {
    product_type_color: "Red",
    product_type_size: "S",
    product_type_image_url: "",
    product: chocopiepie,
  },
  {
    product_type_color: "Green",
    product_type_size: "M",
    product_type_image_url: "",
    product: chocopiepie,
  },
  {
    product_type_color: "Blue",
    product_type_size: "L",
    product_type_image_url: "",
    product: chocopiepie,
  },
])
