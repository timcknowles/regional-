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

ActiveRecord::Schema.define(version: 20160918194704) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "anaesthetics", force: :cascade do |t|
    t.integer  "doctor_id"
    t.integer  "patient_id"
    t.datetime "date_and_time"
    t.string   "intevention"
    t.string   "indication"
    t.integer  "no_attempts"
    t.string   "complications"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["doctor_id"], name: "index_anaesthetics_on_doctor_id", using: :btree
    t.index ["patient_id"], name: "index_anaesthetics_on_patient_id", using: :btree
  end

  create_table "doctors", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "follow_ups", force: :cascade do |t|
    t.integer  "doctor_id"
    t.integer  "patient_id"
    t.boolean  "mobilising"
    t.boolean  "sensory_disturbance"
    t.boolean  "motor_weakness"
    t.boolean  "passed_urine"
    t.boolean  "headache"
    t.boolean  "pain"
    t.boolean  "awareness_GA"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "comment"
    t.datetime "date_and_time"
    t.index ["doctor_id"], name: "index_follow_ups_on_doctor_id", using: :btree
    t.index ["patient_id"], name: "index_follow_ups_on_patient_id", using: :btree
  end

  create_table "patients", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "DOB"
    t.string   "NHS_No"
    t.string   "MRN"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "anaesthetics", "doctors"
  add_foreign_key "anaesthetics", "patients"
  add_foreign_key "follow_ups", "doctors"
  add_foreign_key "follow_ups", "patients"
end
