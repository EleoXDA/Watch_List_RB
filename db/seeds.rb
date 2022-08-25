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
100.times do |n|
  Movie.create!(title: Faker::Movie.title, overview: Faker::Quote.famous_last_word,
                poster_url: Faker::LoremFlickr.image(size: '300x300', search_terms: ['movies'], match_all: true),
                rating: rand(0..10))
end
puts 'Finished!'
