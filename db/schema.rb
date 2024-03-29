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

ActiveRecord::Schema.define(version: 2019_07_24_083902) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attendables", force: :cascade do |t|
    t.string "uid"
    t.integer "resource_id", null: false
    t.string "resource_type", null: false
    t.integer "user_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "uid"
    t.string "name"
    t.string "description"
    t.integer "institution_id"
    t.index ["institution_id"], name: "index_courses_on_institution_id"
  end

  create_table "institutions", force: :cascade do |t|
    t.string "uid"
    t.string "name"
    t.string "description"
    t.boolean "published", default: false
  end

  create_table "users", force: :cascade do |t|
    t.string "uid"
    t.bigint "fb_id"
    t.string "student_id"
    t.string "name"
    t.string "type"
    t.index ["fb_id"], name: "index_users_on_fb_id", unique: true
    t.index ["type"], name: "index_users_on_type"
  end

end
