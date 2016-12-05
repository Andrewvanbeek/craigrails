# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

30.times do |x|
  @category = Category.create(title: Faker::Hipster.word)
  @article_1 = Article.create(title: Faker::Hipster.word,
                            description: Faker::Hipster.paragraph,
                            contact: Faker::Internet.email,
                            price: Faker::Commerce.price)
  @article_2 = Article.create(title: Faker::Hipster.word,
                            description: Faker::Hipster.paragraph,
                            contact: Faker::Internet.email,
                            price: Faker::Commerce.price)
  @category.articles << @article_1
  @category.articles << @article_2
  @category.save
end


