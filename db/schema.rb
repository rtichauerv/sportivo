# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_05_29_041206) do
  create_table "activities", force: :cascade do |t|
    t.string "creator"
    t.string "title"
    t.text "description"
    t.datetime "datetime"
    t.string "location"
    t.integer "places"
    t.integer "price"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "activities_users", id: false, force: :cascade do |t|
    t.integer "activity_id", null: false
    t.integer "user_id", null: false
    t.index ["activity_id", "user_id"], name: "index_activities_users_on_activity_id_and_user_id"
    t.index ["user_id", "activity_id"], name: "index_activities_users_on_user_id_and_activity_id"
  end

  create_table "assistants", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "full_name"
    t.date "birth"
    t.string "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
  end

end
