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

ActiveRecord::Schema.define(version: 20171218091424) do

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
    t.integer  "user_id"
    t.integer  "room_id"
    t.index ["room_id"], name: "index_amenities_on_room_id", using: :btree
    t.index ["user_id"], name: "index_amenities_on_user_id", using: :btree
  end

  create_table "bathrooms", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "bathrooms_count", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "user_id"
    t.integer  "room_id"
    t.index ["room_id"], name: "index_bathrooms_on_room_id", using: :btree
    t.index ["user_id"], name: "index_bathrooms_on_user_id", using: :btree
  end

  create_table "bedrooms", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "capacity_count", null: false
    t.integer  "rooms_count",    null: false
    t.integer  "beds_count",     null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "user_id"
    t.integer  "room_id"
    t.index ["room_id"], name: "index_bedrooms_on_room_id", using: :btree
    t.index ["user_id"], name: "index_bedrooms_on_user_id", using: :btree
  end

  create_table "explanatories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title",                              null: false
    t.text     "overview",             limit: 65535, null: false
    t.text     "space",                limit: 65535, null: false
    t.text     "guest_access",         limit: 65535, null: false
    t.text     "guest_interraction",   limit: 65535, null: false
    t.text     "other_things_to_note", limit: 65535, null: false
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.integer  "room_id"
    t.integer  "user_id"
    t.index ["room_id"], name: "index_explanatories_on_room_id", using: :btree
    t.index ["user_id"], name: "index_explanatories_on_user_id", using: :btree
  end

  create_table "favorites", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id",    null: false
    t.integer  "room_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.integer  "room_id"
  end

  create_table "locations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "country"
    t.integer  "postal_code"
    t.string   "prefecture"
    t.string   "city"
    t.string   "address"
    t.string   "building_name"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "user_id"
    t.integer  "room_id"
    t.float    "latitude",      limit: 24
    t.float    "longitude",     limit: 24
    t.index ["room_id"], name: "index_locations_on_room_id", using: :btree
    t.index ["user_id"], name: "index_locations_on_user_id", using: :btree
  end

  create_table "messages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.text     "body",       limit: 65535
    t.integer  "user_id"
    t.integer  "group_id"
    t.string   "image"
  end

  create_table "photos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "room_id"
    t.integer  "user_id"
    t.integer  "status"
    t.index ["room_id"], name: "index_photos_on_room_id", using: :btree
    t.index ["user_id"], name: "index_photos_on_user_id", using: :btree
  end

  create_table "prices", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id",        null: false
    t.integer  "room_id",        null: false
    t.integer  "basic_charge"
    t.integer  "cleaning_fee"
    t.integer  "deposit_money"
    t.integer  "additional_fee"
    t.integer  "weekend_rates"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["room_id"], name: "index_prices_on_room_id", using: :btree
    t.index ["user_id"], name: "index_prices_on_user_id", using: :btree
  end

  create_table "reservations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id",     null: false
    t.integer  "room_id",     null: false
    t.date     "check_in",    null: false
    t.date     "check_out",   null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "guest_count"
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
    t.integer  "user_id",                     null: false
    t.string   "property_type", default: "0", null: false
    t.string   "home_type",     default: "0", null: false
    t.string   "room_type",     default: "0", null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.boolean  "guest_only"
  end

  create_table "rules", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "children_for_2_12"
    t.integer  "for_infants_under_2"
    t.integer  "for_pets"
    t.integer  "smoking"
    t.integer  "parties"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "user_id"
    t.integer  "room_id"
    t.boolean  "stairs"
    t.boolean  "noises"
    t.boolean  "pets"
    t.boolean  "spaces"
    t.boolean  "minimum_amenities"
    t.index ["room_id"], name: "index_rules_on_room_id", using: :btree
    t.index ["user_id"], name: "index_rules_on_user_id", using: :btree
  end

  create_table "user_groups", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.integer  "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_user_groups_on_group_id", using: :btree
    t.index ["user_id"], name: "index_user_groups_on_user_id", using: :btree
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
    t.string   "sex"
    t.datetime "birthday"
    t.string   "langage"
    t.string   "currency"
    t.text     "intro",                  limit: 65535
    t.boolean  "host"
    t.string   "image"
    t.string   "provider"
    t.string   "uid"
    t.string   "phone_number"
    t.string   "description"
    t.integer  "group_id"
    t.integer  "room_id"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "amenities", "rooms"
  add_foreign_key "amenities", "users"
  add_foreign_key "bathrooms", "rooms"
  add_foreign_key "bathrooms", "users"
  add_foreign_key "bedrooms", "rooms"
  add_foreign_key "bedrooms", "users"
  add_foreign_key "explanatories", "rooms"
  add_foreign_key "explanatories", "users"
  add_foreign_key "locations", "rooms"
  add_foreign_key "locations", "users"
  add_foreign_key "photos", "rooms"
  add_foreign_key "photos", "users"
  add_foreign_key "prices", "rooms"
  add_foreign_key "prices", "users"
  add_foreign_key "rules", "rooms"
  add_foreign_key "rules", "users"
  add_foreign_key "user_groups", "groups"
  add_foreign_key "user_groups", "users"
end
