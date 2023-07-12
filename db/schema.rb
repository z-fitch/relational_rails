# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_07_07_204134) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artworks", force: :cascade do |t|
    t.string "name"
    t.integer "location"
    t.string "time_period"
    t.integer "length_of_stay"
    t.string "medium"
    t.boolean "able_to_auction"
    t.string "artist_name"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "museum_id", null: false
    t.index ["museum_id"], name: "index_artworks_on_museum_id"
  end

  create_table "museums", force: :cascade do |t|
    t.string "name"
    t.integer "floors"
    t.string "exhibits"
    t.boolean "can_fit_more_art"
    t.integer "occupancy"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "artworks", "museums"
end
