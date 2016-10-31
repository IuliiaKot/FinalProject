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

ActiveRecord::Schema.define(version: 20161031193246) do

  create_table "cohorts", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pitches", force: :cascade do |t|
    t.string   "title",                       null: false
    t.text     "description",                 null: false
    t.integer  "student_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.boolean  "final",       default: false
  end

  create_table "ranks", force: :cascade do |t|
    t.integer  "pitch_id"
    t.integer  "student_id"
    t.integer  "rank"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pitch_id"], name: "index_ranks_on_pitch_id"
    t.index ["student_id"], name: "index_ranks_on_student_id"
  end

  create_table "settings", force: :cascade do |t|
    t.integer  "cohort_id"
    t.integer  "pitches_per_student"
    t.integer  "number_in_second_round"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.boolean  "active"
    t.index ["cohort_id"], name: "index_settings_on_cohort_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "password_digest", null: false
    t.string   "first_name",      null: false
    t.string   "last_name",       null: false
    t.integer  "cohort_id"
    t.string   "type"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["cohort_id"], name: "index_users_on_cohort_id"
  end

  create_table "votes", force: :cascade do |t|
    t.integer  "pitch_id"
    t.integer  "count",      default: 0
    t.integer  "student_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["pitch_id"], name: "index_votes_on_pitch_id"
  end

end
