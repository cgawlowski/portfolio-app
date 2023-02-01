# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Project.destroy_all

puts "Creating fake projects"

4.times do
  Project.create(
    name: Faker::TvShows::ParksAndRec.character,
    description: Faker::Quotes::Shakespeare.hamlet_quote,
    is_woodworking: true,
    is_web: false,
    preview_picture: "https://res.cloudinary.com/dus151ezt/image/upload/v1614447271/roadcypressesv_ivna6i.jpg"
  )

  Project.create(
    name: Faker::TvShows::ParksAndRec.character,
    description: Faker::Quotes::Shakespeare.king_richard_iii_quote,
    is_woodworking: false,
    is_web: true,
    preview_picture: "https://res.cloudinary.com/dus151ezt/image/upload/v1614127010/5s6z8a6rwu6qsgq09orajrt61zhd.jpg"
  )
end

puts "Fake projects created!"