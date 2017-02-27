# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.destroy_all

cat1 = Category.create(name: 'maaltijd')
cat2 = Category.create(name: 'lunch')
cat3 = Category.create(name: 'snack')
cat4 = Category.create(name: 'dessert')
cat5 = Category.create(name: 'bijgerecht')
cat6 = Category.create(name: 'salade')
cat7 = Category.create(name: 'taart')
cat8 = Category.create(name: 'soep')
cat9 = Category.create(name: '1 persoons')
cat10 = Category.create(name: 'super snel')
cat11 = Category.create(name: 'vegan')
cat12 = Category.create(name: 'vegetarisch')
cat13 = Category.create(name: 'vis')
cat14 = Category.create(name: 'eieren')
