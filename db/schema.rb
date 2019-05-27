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

ActiveRecord::Schema.define(version: 2019_05_24_072618) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "automos", force: :cascade do |t|
    t.text "name"
    t.decimal "displacement"
    t.integer "enginetype"
    t.integer "cargocapacity"
    t.text "drivenwheels"
    t.text "vinnumber"
    t.text "transmission"
    t.text "engineconfiguration"
    t.boolean "forcedinduction"
    t.integer "passengerseats"
    t.integer "urgency"
    t.boolean "idle"
    t.bigint "creator_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["creator_id"], name: "index_automos_on_creator_id"
  end

  create_table "autorecords", force: :cascade do |t|
    t.decimal "avgambienttemp"
    t.integer "barometricpressure"
    t.integer "avgengineload"
    t.integer "avrmp"
    t.integer "fuelconsumption"
    t.integer "avgenginetemp"
    t.integer "hspeed"
    t.integer "avgspeed"
    t.integer "runtime"
    t.bigint "automo_id"
    t.bigint "trip_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "distancetravelled"
    t.index ["automo_id"], name: "index_autorecords_on_automo_id"
    t.index ["trip_id"], name: "index_autorecords_on_trip_id"
  end

  create_table "creators", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_creators_on_email", unique: true
    t.index ["reset_password_token"], name: "index_creators_on_reset_password_token", unique: true
  end

  create_table "trips", force: :cascade do |t|
    t.text "tittle"
    t.integer "equipmentweight"
    t.integer "passengercount"
    t.text "destination"
    t.text "details"
    t.integer "urgency"
    t.boolean "completed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "creator_id"
    t.index ["creator_id"], name: "index_trips_on_creator_id"
  end

  add_foreign_key "automos", "creators"
  add_foreign_key "autorecords", "automos"
  add_foreign_key "autorecords", "trips"
  add_foreign_key "trips", "creators"
end
