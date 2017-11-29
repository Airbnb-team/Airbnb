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

ActiveRecord::Schema.define(version: 20171129052351) do

  create_table "amenities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.boolean  "pet"
    t.boolean  "elevator"
    t.boolean  "kid_friendly"
    t.boolean  "gym"
    t.boolean  "doorman"
    t.boolean  "breakfast"
    t.boolean  "suitable_for_events"
    t.boolean  "free_parking"
    t.boolean  "smoking_allowed"
    t.boolean  "wheelchair_accessible"
    t.boolean  "wireless_internet"
    t.boolean  "hot_tub"
    t.boolean  "air_conditioning"
    t.boolean  "kitchen"
    t.boolean  "cable_tv"
    t.boolean  "wireless_intercom"
    t.boolean  "baby_bath"
    t.boolean  "baby_monitor"
    t.boolean  "babysitter"
    t.boolean  "bathtub"
    t.boolean  "changing_table"
    t.boolean  "childrend_books_and_toys"
    t.boolean  "childrens_dinnerware"
    t.boolean  "crib"
    t.boolean  "fireplace_guards"
    t.boolean  "indoor_fireplace"
    t.boolean  "pool"
    t.boolean  "shampoo"
    t.boolean  "hangers"
    t.boolean  "iron"
    t.boolean  "dryer"
    t.boolean  "hair_dryer"
    t.boolean  "Laptop"
    t.boolean  "tv"
    t.boolean  "washer"
    t.boolean  "heating"
    t.boolean  "free_parking_on_street"
    t.boolean  "private_entrance"
    t.boolean  "ethernet_connection"
    t.boolean  "game_console"
    t.boolean  "high_chair"
    t.boolean  "outlet_covers"
    t.boolean  "travel_crib"
    t.boolean  "room_darkening_shades"
    t.boolean  "stair_gates"
    t.boolean  "estable_corner_guardssentials"
    t.boolean  "table_corner_guards"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "favorites", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id",    null: false
    t.integer  "photo_id",   null: false
    t.integer  "room_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id",    null: false
    t.integer  "room_id",    null: false
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id",    null: false
    t.integer  "room_id",    null: false
    t.date     "check_in",   null: false
    t.date     "check_out",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id",                  null: false
    t.integer  "room_id",                  null: false
    t.integer  "happiness",                null: false
    t.text     "comment_id", limit: 65535, null: false
    t.integer  "speed",                    null: false
    t.integer  "behavior",                 null: false
    t.integer  "score",                    null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "rooms", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id",                            null: false
    t.string   "langage",                            null: false
    t.string   "title",                              null: false
    t.integer  "overview",                           null: false
    t.text     "space",                limit: 65535, null: false
    t.text     "guest_access",         limit: 65535, null: false
    t.integer  "guest_interraction",                 null: false
    t.text     "other_things_to_note", limit: 65535, null: false
    t.text     "neighborhood",         limit: 65535, null: false
    t.integer  "property_type",                      null: false
    t.integer  "home_type",                          null: false
    t.integer  "room_type",                          null: false
    t.integer  "room_setup",                         null: false
    t.integer  "bedrooms",                           null: false
    t.integer  "guest_capacity",                     null: false
    t.integer  "prepared_beds",                      null: false
    t.integer  "bath_room",                          null: false
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                                default: "", null: false
    t.string   "encrypted_password",                   default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                        default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.string   "name"
    t.string   "image"
    t.string   "sex"
    t.string   "birthday"
    t.string   "langage"
    t.string   "currency"
    t.text     "intro",                  limit: 65535
    t.boolean  "host"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
