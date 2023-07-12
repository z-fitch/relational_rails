require "rails_helper"

describe Artwork, type: :model do
before :each do
  @moma = Museum.create!(name: "The Museum of Modern Art", floors: 5, exhibits: "Post-Impressionism", can_fit_more_art: true, occupancy: 3)
  @starry = @moma.artworks.create!(name: "The Starry Night", location: 2, time_period: "Post-Impressionism", length_of_stay: 90, medium: "Oil Paint", able_to_auction: false, artist_name: "Vincent Van Gogh", price: 1000000.00)
  @sunday = @moma.artworks.create!(name: "A Sunday Afternoon on the Island of La Grande Jatte", location: 1, time_period: "Post-Impressionism", length_of_stay: 80, medium: "Oil Paint", able_to_auction: false, artist_name: "Georges Seurat", price: 65000000.00)
end

  describe "Each part of the museum table" do
    it "can access the names" do 
      
      expect(@starry.name).to eql("The Starry Night")
      expect(@sunday.name).to eql("A Sunday Afternoon on the Island of La Grande Jatte")
    end

    it "can access the location" do 
      expect(@starry.location).to eql(2)
      expect(@sunday.location).to eql(1)
    end

    it "can access the time_period" do 
      
      expect(@starry.time_period).to eql("Post-Impressionism")
      expect(@sunday.time_period).to eql("Post-Impressionism")
    end

    it "can access the boolean able_to_auction" do 
      
      expect(@starry.able_to_auction).to eql(false)
      expect(@sunday.able_to_auction).to eql(false)
    end

    it "can access the length_of_stay" do 
      
      expect(@starry.length_of_stay).to eql(90)
      expect(@sunday.length_of_stay).to eql(80)
    end

    it "can access the artist_name" do 
      
      expect(@starry.artist_name).to eql("Vincent Van Gogh")
      expect(@sunday.artist_name).to eql("Georges Seurat")
    end

    it "can access the medium" do 
      
      expect(@starry.medium).to eql("Oil Paint")
      expect(@sunday.medium).to eql("Oil Paint")
    end

    it "can access the price" do 
      
      expect(@starry.price).to eql(1000000.00)
      expect(@sunday.price).to eql(65000000.00)
    end
  end
end