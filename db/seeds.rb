# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

@fleetwoodmac = Artist.create!(name: "Fleetwood Mac")
@chain = @fleetwoodmac.songs.create!(title: "The Chain", length: 364, play_count: 5)
@lies = @fleetwoodmac.songs.create!(title: "Lies", length: 576, play_count: 476)