class AddMuseumToArtwork < ActiveRecord::Migration[7.0]
  def change
    add_reference :artworks, :museum, null: false, foreign_key: true
  end
end
