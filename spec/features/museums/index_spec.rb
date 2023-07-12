require "rails_helper"

# User Story 1, Parent Index 

# For each parent table
# As a visitor
# When I visit '/parents'
# Then I see the name of each parent record in the system
# dont use ruby for active record querying

describe Museum, type: :feature do
  describe "Each Parent Table" do
    describe "As a visitor when visiting /museum" do
      it "shows each museum in the system" do 
        moma = Museum.create!(name: "The Museum of Modern Art", floors: 5, exhibits: "Post-Impressionism", can_fit_more_art: true, occupancy: 3)
        mcnay = Museum.create!(name: "McNay Art Museum", floors: 2, exhibits: "Modern", can_fit_more_art: true, occupancy: 2)

        visit "/museum"

        expect(page).to have_content(moma.name)
        expect(page).to have_content(mcnay.name)
      end
    end
  end
end