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

ActiveRecord::Schema.define(version: 2021_01_26_144648) do

  create_table "events", force: :cascade do |t|
    t.string "type"
    t.string "location"
    t.string "playground"
    t.string "date"
    t.integer "price"
    t.integer "reward"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "playgrounds", force: :cascade do |t|
    t.string "location"
    t.string "reputation"
    t.string "agenda"
    t.string "name"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string "nick_name"
    t.integer "reputation"
    t.string "location"
    t.string "experience"
    t.string "level"
    t.integer "practice_time_per_week"
    t.string "skills"
    t.string "drills"
    t.string "agenda"
    t.string "story"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
