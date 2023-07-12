require "rails_helper"
#   User Story 2, Parent Show 

# As a visitor
# When I visit '/parents/:id'
# Then I see the parent with that id including the parent's attributes
# (data from each column that is on the parent table)
describe Museum, type: :feature do
  describe "As a visitor when visiting /museum/:id" do
    it "shows the museum with that id including the parent's attributes" do 
      moma = Museum.create!(name: "The Museum of Modern Art", floors: 5, exhibits: "Post-Impressionism", can_fit_more_art: true, occupancy: 3)

      visit "/museum/#{moma.id}"

      expect(page).to have_content(moma.name)
      expect(page).to have_content(moma.exhibits)
      expect(page).to have_content(moma.floors)
      expect(page).to have_content(moma.occupancy)
      expect(page).to have_content(moma.can_fit_more_art)
    end
  end
end