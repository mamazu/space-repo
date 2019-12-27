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

ActiveRecord::Schema.define(version: 2019_12_27_170035) do

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
    t.integer "village_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "default"
    t.index ["village_id"], name: "index_buildings_on_village_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "villages", force: :cascade do |t|
    t.string "name"
    t.string "level"
    t.string "position_x"
    t.string "position_y"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["position_x", "position_y"], name: "unique_position_per_village", unique: true
  end

  add_foreign_key "building_levels", "buildings"
end
