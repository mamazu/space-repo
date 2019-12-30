# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_30_172507) do

  create_table "annomalies", force: :cascade do |t|
    t.string "type"
    t.integer "level"
    t.integer "upkeep"
    t.integer "restoration_cost"
    t.integer "modifier_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["modifier_id"], name: "index_annomalies_on_modifier_id"
  end

  create_table "building_levels", force: :cascade do |t|
    t.integer "building_id", null: false
    t.integer "level"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["building_id"], name: "index_building_levels_on_building_id"
  end

  create_table "buildings", force: :cascade do |t|
    t.string "level", null: false
    t.string "name"
    t.integer "planets_id"
    t.boolean "default"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["planets_id"], name: "index_buildings_on_planets_id"
  end

  create_table "map_decorations", force: :cascade do |t|
    t.string "type"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "maps", force: :cascade do |t|
    t.integer "x"
    t.integer "y"
    t.integer "typ_id"
    t.boolean "traversable"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["typ_id"], name: "index_maps_on_typ_id"
    t.index ["x", "y"], name: "unique_map_position", unique: true
  end

  create_table "planets", force: :cascade do |t|
    t.string "name"
    t.string "level"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_planets_on_user_id"
  end

  create_table "sun_systems", force: :cascade do |t|
    t.string "name"
    t.integer "planet_count"
    t.integer "size"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "building_levels", "buildings"
  add_foreign_key "planets", "users"
end
