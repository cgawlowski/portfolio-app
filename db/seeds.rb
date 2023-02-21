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
  file1 = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")
  file2 = URI.open("https://th.bing.com/th/id/R.3d88a927f8529dcba03364b09d98adbe?rik=JYmQaMVSULpYQg&riu=http%3a%2f%2fthewowstyle.com%2fwp-content%2fuploads%2f2015%2f01%2fnature-images.jpg&ehk=BNPsuSOUR7ATZ3EpRwxx1xFl7LUbO3tYlu1wFLCBrCE%3d&risl=&pid=ImgRaw&r=0")

  project = Project.new(
    name: Faker::TvShows::ParksAndRec.character,
    description: Faker::Quotes::Shakespeare.hamlet_quote,
    is_woodworking: true,
    is_web: false
  )
  project.photos.attach(io: file1, filename: 'nes.png', content_type: 'image/png')
  project.photos.attach(io: file2, filename: 'nes.png', content_type: 'image/png')
  project.save
end

4.times do
  file1 = URI.open("https://res.cloudinary.com/dus151ezt/image/upload/v1615433854/phvdbcci6l17dqbu5lmjo2dcizzx.jpg")
  file2 = URI.open("https://th.bing.com/th/id/R.3d88a927f8529dcba03364b09d98adbe?rik=JYmQaMVSULpYQg&riu=http%3a%2f%2fthewowstyle.com%2fwp-content%2fuploads%2f2015%2f01%2fnature-images.jpg&ehk=BNPsuSOUR7ATZ3EpRwxx1xFl7LUbO3tYlu1wFLCBrCE%3d&risl=&pid=ImgRaw&r=0")
  project = Project.new(
    name: Faker::TvShows::ParksAndRec.character,
    description: Faker::Quotes::Shakespeare.hamlet_quote,
    is_woodworking: false,
    is_web: true
  )
  project.photos.attach(io: file1, filename: 'nes.png', content_type: 'image/png')
  project.photos.attach(io: file2, filename: 'nes.png', content_type: 'image/png')

  project.save
end

puts "Fake projects created!"