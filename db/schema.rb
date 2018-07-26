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

ActiveRecord::Schema.define(version: 20180725022107) do

  create_table "comments", force: :cascade do |t|
    t.string "community_comment"
    t.integer "user_id"
    t.integer "community_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["community_id"], name: "index_comments_on_community_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "communities", force: :cascade do |t|
    t.string "community_title"
    t.text "community_content"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_communities_on_user_id"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "truck_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["truck_id"], name: "index_likes_on_truck_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "menus", force: :cascade do |t|
    t.string "menu_name"
    t.integer "truck_id"
    t.integer "menu_price"
    t.string "menu_image"
    t.string "menu_category"
    t.string "menu_state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "menu_information"
    t.index ["truck_id"], name: "index_menus_on_truck_id"
  end

  create_table "schools", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.float "lat"
    t.float "lng"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lat"], name: "index_schools_on_lat"
    t.index ["lng"], name: "index_schools_on_lng"
  end

  create_table "truck_reviews", force: :cascade do |t|
    t.text "truck_review_content"
    t.string "truck_review_image"
    t.integer "user_id"
    t.integer "truck_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["truck_id"], name: "index_truck_reviews_on_truck_id"
    t.index ["user_id"], name: "index_truck_reviews_on_user_id"
  end

  create_table "trucks", force: :cascade do |t|
    t.string "truck_name"
    t.float "truck_x"
    t.float "truck_y"
    t.string "truck_sns"
    t.string "truck_sns2"
    t.string "truck_phone"
    t.string "truck_cover"
    t.string "truck_category"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_trucks_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "nickname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
