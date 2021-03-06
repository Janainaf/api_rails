# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Article.destroy_all
User.destroy_all

1.times do
  user = User.create!(
    email: "test@example.com",
    password: "123456",
  )
end

8.times do 
  article = Article.create!(
    title: Faker::Book.title,
    content: Faker::Lorem.sentence,
    user: User.all.sample,
  )  
end