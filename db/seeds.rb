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
  file1 = URI.open("https://res.cloudinary.com/dus151ezt/image/upload/v1676948369/1c1gx15jk2totrqsdsj8xffwualz.jpg")
  file2 = URI.open("https://res.cloudinary.com/dus151ezt/image/upload/v1677353242/draisienne-dsc4462-dxo-12-scaled_nfokei.jpg")

  project = Project.new(
    name: Faker::TvShows::ParksAndRec.character,
    description: Faker::Quotes::Shakespeare.hamlet_quote,
    is_woodworking: true,
    is_web: false,
    user_id: 1
  )
  project.photos.attach(io: file1, filename: 'nes.png', content_type: 'image/png')
  project.photos.attach(io: file2, filename: 'nes.png', content_type: 'image/png')
  project.save
end

4.times do
  file1 = URI.open("https://res.cloudinary.com/dus151ezt/image/upload/v1616464656/rvfu9kn8dvu4gi6854ls3lov4i6w.jpg")
  file2 = URI.open("https://res.cloudinary.com/dus151ezt/image/upload/v1614447271/roadcypressesv_ivna6i.jpg")
  project = Project.new(
    name: Faker::TvShows::ParksAndRec.character,
    description: Faker::Quotes::Shakespeare.hamlet_quote,
    is_woodworking: false,
    is_web: true,
    user_id: 1
  )
  project.photos.attach(io: file1, filename: 'nes.png', content_type: 'image/png')
  project.photos.attach(io: file2, filename: 'nes.png', content_type: 'image/png')

  project.save
end

puts "Fake projects created!"