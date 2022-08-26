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
20.times do
  moviename = Faker::Movie.unique.title
  movie = Movie.create!(title: moviename, overview: Faker::Quote.unique.famous_last_words,
                        poster_url: "https://source.unsplash.com/random/1920x1080/?#{moviename}",
                        rating: rand(0..10))
  puts movie.id.to_s
end
puts 'Finished!'
