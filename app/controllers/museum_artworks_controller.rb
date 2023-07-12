class MuseumArtworksController < ApplicationController
  def index
    @museum = Museum.find(params[:museum_id])
    @artworks = @museum.artworks
  end
end