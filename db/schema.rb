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

ActiveRecord::Schema.define(version: 2020_02_07_113131) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appetizers", force: :cascade do |t|
    t.string "name"
    t.text "recipe"
    t.integer "price"
    t.bigint "menu_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "stock"
    t.index ["menu_id"], name: "index_appetizers_on_menu_id"
  end

  create_table "commands", force: :cascade do |t|
    t.integer "number_of_diner"
    t.date "times"
    t.text "appet", default: [], array: true
    t.bigint "table_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "state", default: false
    t.index ["table_id"], name: "index_commands_on_table_id"
    t.index ["user_id"], name: "index_commands_on_user_id"
  end

  create_table "dishescommands", force: :cascade do |t|
    t.bigint "command_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "drink_id"
    t.boolean "state", default: false
    t.index ["command_id"], name: "index_dishescommands_on_command_id"
    t.index ["drink_id"], name: "index_dishescommands_on_drink_id"
  end

  create_table "drinks", force: :cascade do |t|
    t.string "name"
    t.text "recipe"
    t.integer "price"
    t.bigint "menu_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "category"
    t.string "photo"
    t.index ["menu_id"], name: "index_drinks_on_menu_id"
  end

  create_table "menus", force: :cascade do |t|
    t.bigint "restaurant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["restaurant_id"], name: "index_menus_on_restaurant_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "phone_number"
    t.string "name"
    t.string "address"
    t.integer "note"
    t.string "email"
    t.text "description"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "number_of_table", default: 0
    t.index ["user_id"], name: "index_restaurants_on_user_id"
  end

  create_table "tables", force: :cascade do |t|
    t.integer "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "restaurant_id"
    t.string "code"
    t.string "otp_secret_key"
    t.string "qr"
    t.index ["restaurant_id"], name: "index_tables_on_restaurant_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "appetizers", "menus"
  add_foreign_key "commands", "tables"
  add_foreign_key "commands", "users"
  add_foreign_key "dishescommands", "commands"
  add_foreign_key "dishescommands", "drinks"
  add_foreign_key "drinks", "menus"
  add_foreign_key "menus", "restaurants"
  add_foreign_key "restaurants", "users"
  add_foreign_key "tables", "restaurants"
end
