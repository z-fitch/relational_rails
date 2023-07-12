# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


moma = Museum.create!(name: "The Museum of Modern Art", floors: 5, exhibits: "Post-Impressionism", can_fit_more_art: true, occupancy: 3)
mcnay = Museum.create!(name: "McNay Art Museum", floors: 2, exhibits: "Modern", can_fit_more_art: true, occupancy: 2)
  
starry = moma.artworks.create!(name: "The Starry Night", location: 2, time_period: "Post-Impressionism", length_of_stay: 90, medium: "Oil Paint", able_to_auction: false, artist_name: "Vincent Van Gogh", price: 1000000.00)
sunday = moma.artworks.create!(name: "A Sunday Afternoon on the Island of La Grande Jatte", location: 1, time_period: "Post-Impressionism", length_of_stay: 80, medium: "Oil Paint", able_to_auction: false, artist_name: "Georges Seurat", price: 65000000.00)

demo = mcnay.artworks.create!(name: "Les Demoiselles d'Avignon", location: 1, time_period: "Modern", length_of_stay: 70, medium: "Oil Paint", able_to_auction: false, artist_name: "Pablo Picasso", price: 6000000.00)
broadway = mcnay.artworks.create!(name: "Broadway Boogie-Woogie", location: 1, time_period: "Modern", length_of_stay: 80, medium: "Oil Paint", able_to_auction: false, artist_name: "Piet Mondrian", price: 65000000.00)
