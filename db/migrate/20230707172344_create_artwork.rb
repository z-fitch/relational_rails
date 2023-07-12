class CreateArtwork < ActiveRecord::Migration[7.0]
  def change
    create_table :artworks do |t|
      t.string :name
      t.integer :location
      t.string :time_period
      t.integer :length_of_stay
      t.string :medium
      t.boolean :able_to_auction
      t.string :artist_name
      t.float :price

      t.timestamps
    end
  end
end
