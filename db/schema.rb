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

ActiveRecord::Schema.define(version: 2018_09_10_175649) do

  create_table "cards", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "mana_cost"
    t.integer "theme_set_id"
    t.integer "deck_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "decks", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "theme_sets", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
<<<<<<< HEAD
    t.string "password_digest"
=======
    t.string "first_name"
    t.string "last_name"
    t.string "password_digest"
    t.string "email"
>>>>>>> 2ceb720e69f7429a307885df108337c7ac86c4ba
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
