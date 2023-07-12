require "rails_helper"

describe Museum, type: :model do

  describe "recently_created" do
    it "returns museums ordered by most recent creation" do
      moma = Museum.create!(name: "The Museum of Modern Art", floors: 5, exhibits: "Post-Impressionism", can_fit_more_art: true, occupancy: 3)
      mcnay = Museum.create!(name: "McNay Art Museum", floors: 2, exhibits: "Modern", can_fit_more_art: true, occupancy: 2)

      expect(Museum.recently_created).to eq([mcnay, moma])
    end
  end

  describe "Each part of the museum table" do
    it "can access the names" do 
      moma = Museum.create!(name: "The Museum of Modern Art", floors: 5, exhibits: "Post-Impressionism", can_fit_more_art: true, occupancy: 3)
      mcnay = Museum.create!(name: "McNay Art Museum", floors: 2, exhibits: "Modern", can_fit_more_art: true, occupancy: 2)

      expect(moma.name).to eql("The Museum of Modern Art")
      expect(mcnay.name).to eql("McNay Art Museum")
    end

    it "can access the floors" do 
      moma = Museum.create!(name: "The Museum of Modern Art", floors: 5, exhibits: "Post-Impressionism", can_fit_more_art: true, occupancy: 3)
      mcnay = Museum.create!(name: "McNay Art Museum", floors: 2, exhibits: "Modern", can_fit_more_art: true, occupancy: 2)

      expect(moma.floors).to eql(5)
      expect(mcnay.floors).to eql(2)
    end

    it "can access the exhibits" do 
      moma = Museum.create!(name: "The Museum of Modern Art", floors: 5, exhibits: "Post-Impressionism", can_fit_more_art: true, occupancy: 3)
      mcnay = Museum.create!(name: "McNay Art Museum", floors: 2, exhibits: "Modern", can_fit_more_art: true, occupancy: 2)

      expect(moma.exhibits).to eql("Post-Impressionism")
      expect(mcnay.exhibits).to eql("Modern")
    end

    it "can access the boolean can_fit_more_art" do 
      moma = Museum.create!(name: "The Museum of Modern Art", floors: 5, exhibits: "Post-Impressionism", can_fit_more_art: true, occupancy: 3)
      mcnay = Museum.create!(name: "McNay Art Museum", floors: 2, exhibits: "Modern", can_fit_more_art: true, occupancy: 2)

      expect(moma.can_fit_more_art).to eql(true)
      expect(mcnay.can_fit_more_art).to eql(true)
    end

    it "can access the occupancy" do 
      moma = Museum.create!(name: "The Museum of Modern Art", floors: 5, exhibits: "Post-Impressionism", can_fit_more_art: true, occupancy: 3)
      mcnay = Museum.create!(name: "McNay Art Museum", floors: 2, exhibits: "Modern", can_fit_more_art: true, occupancy: 2)

      expect(moma.occupancy).to eql(3)
      expect(mcnay.occupancy).to eql(2)
    end
  end

  describe "#moma?" do
    it "returns true if the name includes The Museum of Modern Art " do 
      moma = Museum.create!(name: "The Museum of Modern Art", floors: 5, exhibits: "Post-Impressionism", can_fit_more_art: true, occupancy: 3)
      mcnay = Museum.create!(name: "McNay Art Museum", floors: 2, exhibits: "Modern", can_fit_more_art: true, occupancy: 2)


      expect(moma.moma?).to be(true)
      expect(mcnay.moma?).to be(false)
    end

    it "returns true if the floors are 5" do 
      moma = Museum.create!(name: "The Museum of  Art", floors: 5, exhibits: "Post-Impressionism", can_fit_more_art: true, occupancy: 3)
      mcnay = Museum.create!(name: "McNay Art Museum", floors: 2, exhibits: "Modern", can_fit_more_art: true, occupancy: 2)


      expect(moma.moma?).to be(true)
      expect(mcnay.moma?).to be(false)
    end

    it "returns true if the exhibit is Post-Impressionism" do 
      moma = Museum.create!(name: "The Museum of Art", floors: 4, exhibits: "Post-Impressionism", can_fit_more_art: true, occupancy: 3)
      mcnay = Museum.create!(name: "McNay Art Museum", floors: 2, exhibits: "Modern", can_fit_more_art: true, occupancy: 2)


      expect(moma.moma?).to be(true)
      expect(mcnay.moma?).to be(false)
    end

    it "returns true if they can fit more art" do 
      moma = Museum.create!(name: "The Museum of Art", floors: 4, exhibits: "Impressionism", can_fit_more_art: true, occupancy: 3)
      mcnay = Museum.create!(name: "McNay Art Museum", floors: 2, exhibits: "Modern", can_fit_more_art: false, occupancy: 2)


      expect(moma.moma?).to be(true)
      expect(mcnay.moma?).to be(false)
    end

    it "returns true if the occupency is 3" do 
      moma = Museum.create!(name: "The Museum of Art", floors: 4, exhibits: "Impressionism", can_fit_more_art: true, occupancy: 3)
      mcnay = Museum.create!(name: "McNay Art Museum", floors: 2, exhibits: "Modern", can_fit_more_art: true, occupancy: 2)


      expect(moma.moma?).to be(true)
      expect(mcnay.moma?).to be(false)
    end

    it "returns true if it is case insenstive" do 
      moma = Museum.create!(name: "The Museum of Modern Art", floors: 5, exhibits: "Post-Impressionism", can_fit_more_art: true, occupancy: 3)
      mcnay = Museum.create!(name: "McNay Art Museum", floors: 2, exhibits: "Modern", can_fit_more_art: true, occupancy: 2)


      expect(moma.moma?).to be(true)
      expect(mcnay.moma?).to be(false)
    end

    it "returns true if it is case insenstive" do 
      moma = Museum.create!(name: "THE MUSEUM OF MODERN ART", floors: 5, exhibits: "POST-Impressionism", can_fit_more_art: true, occupancy: 3)
      mcnay = Museum.create!(name: "McNay Art Museum", floors: 2, exhibits: "Modern", can_fit_more_art: true, occupancy: 2)


      expect(moma.moma?).to be(true)
      expect(mcnay.moma?).to be(false)
    end
  end
end