# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20170719044056) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applications", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name_materno"
    t.string   "last_name_paterno"
    t.string   "email"
    t.string   "phone"
    t.integer  "DOB_day"
    t.string   "DOB_month"
    t.integer  "DOB_year"
    t.text     "a1_como_te_enteraste"
    t.text     "a2_poque_HTMLyCSS"
    t.text     "a3_logictest1_Laura"
    t.text     "a4_logictest2_arboles"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "requisitos"
    t.string   "universidad"
    t.string   "course"
  end

  create_table "pstudents", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "fullname"
    t.boolean  "from_quickbutton"
  end

end
