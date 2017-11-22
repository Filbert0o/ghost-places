# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20171122034822) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ghosts", force: :cascade do |t|
    t.string "name", null: false
    t.string "backstory"
  end

  create_table "haunts", force: :cascade do |t|
    t.integer "ghost_id", null: false
    t.integer "place_id", null: false
  end

  create_table "places", force: :cascade do |t|
    t.string "name", null: false
    t.string "description"
  end

  create_table "victims", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.integer "ghost_id"
    t.integer "place_id", null: false
  end

end
