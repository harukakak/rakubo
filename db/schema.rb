# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_02_10_015959) do

  create_table "memos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "target"
    t.text "text", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_memos_on_user_id"
  end

  create_table "money", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "year_id", null: false
    t.integer "month_id", null: false
    t.string "income_account_name", null: false
    t.string "income_account2_name"
    t.string "payment_account1_name", null: false
    t.string "payment_account2_name"
    t.string "payment_account3_name"
    t.integer "income_money", null: false
    t.integer "income2_money"
    t.integer "payment1_money", null: false
    t.integer "payment2_money"
    t.integer "payment3_money"
    t.integer "payment4_money"
    t.integer "payment5_money"
    t.integer "payment6_money"
    t.integer "payment7_money"
    t.integer "payment8_money"
    t.integer "payment9_money"
    t.integer "payment10_money"
    t.integer "payment11_money"
    t.integer "payment12_money"
    t.integer "payment13_money"
    t.integer "payment14_money"
    t.integer "item_name1_id", null: false
    t.integer "item_name2_id"
    t.integer "item_name3_id"
    t.integer "item_name4_id"
    t.integer "item_name5_id"
    t.integer "item_name6_id"
    t.integer "item_name7_id"
    t.integer "item_name8_id"
    t.integer "item_name9_id"
    t.integer "item_name10_id"
    t.integer "item_name11_id"
    t.string "item_name1_self"
    t.string "item_name2_self"
    t.string "item_name3_self"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_money_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nick_name", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "memos", "users"
  add_foreign_key "money", "users"
end
