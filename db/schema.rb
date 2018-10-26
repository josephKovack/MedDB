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

ActiveRecord::Schema.define(version: 20181011195954) do

  create_table "employees", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "employee_id"
    t.string "first_name"
    t.string "last_name"
    t.integer "telephone"
    t.string "department"
    t.string "title"
    t.integer "pay"
    t.date "start_date"
    t.integer "hospital_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "health_care_providers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "hcp_id"
    t.string "company_name"
    t.string "address"
    t.string "city"
    t.string "state"
    t.integer "telephone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hospitals", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "hospital_id"
    t.string "hospital_name"
    t.string "address"
    t.string "city"
    t.string "state"
    t.integer "telephone"
    t.string "hospital_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medical_records", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "ssn"
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.date "dob"
    t.string "family_history"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "existing_cond"
    t.string "allergies"
    t.string "medications"
    t.integer "hcp_id"
    t.integer "telephone"
    t.string "doctor_first_name"
    t.string "doctor_last_name"
    t.integer "employee_id"
    t.boolean "fasting"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
