class CreateMuseum < ActiveRecord::Migration[7.0]
  def change
    create_table :museums do |t|
      t.string :name
      t.integer :floors
      t.string :exhibits
      t.boolean :can_fit_more_art
      t.integer :occupancy

      t.timestamps
    end
  end
end
