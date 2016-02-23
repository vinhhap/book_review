# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
10.times do 
  review = Review.new
  review.title = Faker::Book.title
  review.author = Faker::Book.author
  review.description = Faker::Book.publisher
  review.content = Faker::Lorem.paragraph(10, false, 4)
  review.preview_image = Faker::Placeholdit.image
  review.save
end

5.times do
  category = Category.new
  category.title = Faker::Book.genre
  category.description = Faker::Lorem.paragraph(2, true, 4)
  category.save
end