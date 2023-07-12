require "rails_helper"

# User Story 3, Child Index 

# As a visitor
# When I visit '/child_table_name'
# Then I see each Child in the system including the Child's attributes
# (data from each column that is on the child table)

describe Artwork, type: :feature do
    describe "As a visitor when visiting /artwork" do
      it "shows each artwork in the system and its attributes" do 
        moma = Museum.create!(name: "The Museum of Modern Art", floors: 5, exhibits: "Post-Impressionism", can_fit_more_art: true, occupancy: 3)
        # starry = Artwork.create!(name: "The Starry Night", location: 2, time_period: "Post-Impressionism", length_of_stay: 90, medium: "Oil Paint", able_to_auction: false, artist_name: "Vincent Van Gogh", price: 1000000.00, museum: moma)
        # sunday = Artwork.create!(name: "A Sunday Afternoon on the Island of La Grande Jatte", location: 1, time_period: "Neo-Impressionism", length_of_stay: 80, medium: "Oil Paint", able_to_auction: false, artist_name: "Georges Seurat", price: 65000000.00, museum: moma)
        starry = moma.artworks.create!(name: "The Starry Night", location: 2, time_period: "Post-Impressionism", length_of_stay: 90, medium: "Oil Paint", able_to_auction: false, artist_name: "Vincent Van Gogh", price: 1000000.00)
        sunday = moma.artworks.create!(name: "A Sunday Afternoon on the Island of La Grande Jatte", location: 1, time_period: "Neo-Impressionism", length_of_stay: 80, medium: "Oil Paint", able_to_auction: false, artist_name: "Georges Seurat", price: 65000000.00)

        visit "/artwork"

        expect(page).to have_content(starry.name)
        expect(page).to have_content(starry.location)
        expect(page).to have_content(starry.time_period)
        expect(page).to have_content(starry.length_of_stay)
        expect(page).to have_content(starry.medium)
        expect(page).to have_content(starry.able_to_auction)
        expect(page).to have_content(starry.artist_name)
        expect(page).to have_content(starry.price)

        expect(page).to have_content(sunday.name)
        expect(page).to have_content(sunday.location)
        expect(page).to have_content(sunday.time_period)
        expect(page).to have_content(sunday.length_of_stay)
        expect(page).to have_content(sunday.medium)
        expect(page).to have_content(sunday.able_to_auction)
        expect(page).to have_content(sunday.artist_name)
        expect(page).to have_content(sunday.price)
      end
    end
end