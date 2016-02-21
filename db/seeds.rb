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