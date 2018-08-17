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

ActiveRecord::Schema.define(version: 2018_08_17_192112) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "samples", force: :cascade do |t|
    t.float "temperature", default: 0.0, null: false
    t.float "humidity", default: 0.0, null: false
    t.float "pressure", default: 0.0, null: false
    t.integer "eco2", default: 0, null: false
    t.integer "tvoc", default: 0, null: false
    t.float "ccs_temperature", default: 0.0, null: false
    t.integer "lux", default: 0, null: false
    t.integer "full_light", default: 0, null: false
    t.integer "ir", default: 0, null: false
    t.integer "visible", default: 0, null: false
    t.integer "pm1", default: 0, null: false
    t.integer "pm25", default: 0, null: false
    t.integer "pm10", default: 0, null: false
    t.float "dust_density", default: 0.0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "uptime", default: 0, null: false
    t.integer "freeheap", default: 0, null: false
    t.index ["ccs_temperature"], name: "index_samples_on_ccs_temperature"
    t.index ["dust_density"], name: "index_samples_on_dust_density"
    t.index ["eco2"], name: "index_samples_on_eco2"
    t.index ["freeheap"], name: "index_samples_on_freeheap"
    t.index ["full_light"], name: "index_samples_on_full_light"
    t.index ["humidity"], name: "index_samples_on_humidity"
    t.index ["ir"], name: "index_samples_on_ir"
    t.index ["lux"], name: "index_samples_on_lux"
    t.index ["pm1"], name: "index_samples_on_pm1"
    t.index ["pm10"], name: "index_samples_on_pm10"
    t.index ["pm25"], name: "index_samples_on_pm25"
    t.index ["pressure"], name: "index_samples_on_pressure"
    t.index ["temperature"], name: "index_samples_on_temperature"
    t.index ["tvoc"], name: "index_samples_on_tvoc"
    t.index ["uptime"], name: "index_samples_on_uptime"
    t.index ["visible"], name: "index_samples_on_visible"
  end

end
