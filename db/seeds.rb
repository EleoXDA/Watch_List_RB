# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Movie.destroy_all

puts 'Creating movies...'
20.times do |n|
  Movie.create!(title: Faker::Movie.unique.title, overview: Faker::Quote.unique.famous_last_words,
                poster_url: 'https://i0.wp.com/sureshfruite.com/wp-content/uploads/woocommerce-placeholder.png',
                rating: rand(0..10))
end
puts 'Finished!'
