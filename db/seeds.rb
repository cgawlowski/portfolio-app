# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

puts "Cleaning database..."
Project.destroy_all

puts "Creating fake projects"

4.times do
  file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")
  project = Project.new(
    name: Faker::TvShows::ParksAndRec.character,
    description: Faker::Quotes::Shakespeare.hamlet_quote,
    is_woodworking: true,
    is_web: false
  )
  project.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  project.save
end

4.times do
  file = URI.open("https://res.cloudinary.com/dus151ezt/image/upload/v1615433854/phvdbcci6l17dqbu5lmjo2dcizzx.jpg")
  project = Project.new(
    name: Faker::TvShows::ParksAndRec.character,
    description: Faker::Quotes::Shakespeare.hamlet_quote,
    is_woodworking: false,
    is_web: true
  )
  project.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  project.save
end

puts "Fake projects created!"