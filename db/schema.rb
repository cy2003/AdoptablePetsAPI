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

ActiveRecord::Schema.define(version: 6) do

  create_table "adopters", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "follows", force: :cascade do |t|
    t.string   "pet_id"
    t.string   "adopter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pets", force: :cascade do |t|
    t.string   "pet_type"
    t.string   "name"
    t.string   "sex"
    t.string   "breed"
    t.integer  "age"
    t.text     "bio"
    t.integer  "rescue_id"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.datetime "date"
    t.text     "description"
    t.string   "image"
    t.integer  "pet_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "rescues", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "organization_name"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.integer  "zipcode"
    t.string   "website"
    t.integer  "phone"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.boolean  "is_rescue"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
