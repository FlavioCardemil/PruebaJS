# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'faker'

# Bookmark.destroy_all



# 20.times do
#   Bookmark.create(
#     url: Faker::Internet.url,
#     category_id: Random.rand(1..10),
#     type_id: Random.rand(1..10)  
#   )
# end


require 'faker'


20.times do
  Type.create(
    title: Faker::TvShows::SouthPark.character
  )
end

categories = ["Autos", "Aviones", "Submarino"]

categories.each do |categorie|
    Category.create(
        title: categorie
    )
end

subcategories_1 = ["Mercedes", "Audi"]
subcategories_2 = ["Monoplaza", "Biplano", "Comercial"]
subcategories_3 = ["Nuclear", "Ligero"]

subcategories_1 .each do |categorie|
    Category.create(
        title: categorie,
        category_id: 1  
    )
end

subcategories_2 .each do |categorie|
    Category.create(
        title: categorie,
        category_id: 2
    )
end

subcategories_3 .each do |categorie|
    Category.create(
        title: categorie,
        category_id: 3
    )
end

20.times do
    Bookmark.create(
        url: Faker::TvShows::HeyArnold.character,
        category_id: Random.rand(1..5),
        type_id: Random.rand(1..2)
    )
end
