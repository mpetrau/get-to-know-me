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

ActiveRecord::Schema.define(version: 20161218074341) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "deal_tags", force: :cascade do |t|
    t.integer  "deal_id"
    t.integer  "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["deal_id"], name: "index_deal_tags_on_deal_id", using: :btree
    t.index ["tag_id"], name: "index_deal_tags_on_tag_id", using: :btree
  end

  create_table "deals", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "original_price"
    t.integer  "new_price"
    t.string   "url"
    t.string   "category"
    t.string   "location"
    t.string   "discount"
    t.string   "provider"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "photo"
  end

  create_table "offers", force: :cascade do |t|
    t.integer  "deal_id"
    t.integer  "user_id"
    t.boolean  "liked?",     default: false
    t.boolean  "disliked?",  default: false
    t.boolean  "bought?",    default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.float    "score",      default: 0.0
    t.string   "provider",   default: ""
    t.boolean  "saved?",     default: false
    t.index ["deal_id"], name: "index_offers_on_deal_id", using: :btree
    t.index ["user_id"], name: "index_offers_on_user_id", using: :btree
  end

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "traits", force: :cascade do |t|
    t.string "name"
  end

  create_table "user_traits", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "trait_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["trait_id"], name: "index_user_traits_on_trait_id", using: :btree
    t.index ["user_id"], name: "index_user_traits_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",       null: false
    t.string   "encrypted_password",     default: "",       null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,        null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.string   "first_name",             default: ""
    t.string   "last_name",              default: ""
    t.string   "location",               default: ""
    t.string   "uid"
    t.string   "facebook_picture_url"
    t.string   "token"
    t.datetime "token_expiry"
    t.string   "user_type",              default: "member"
    t.string   "provider"
    t.index ["email", "user_type"], name: "index_users_on_email_and_user_type", unique: true, where: "((user_type)::text <> 'guest'::text)", using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "weights", force: :cascade do |t|
    t.integer  "tag_id"
    t.integer  "trait_id"
    t.float    "weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tag_id"], name: "index_weights_on_tag_id", using: :btree
    t.index ["trait_id"], name: "index_weights_on_trait_id", using: :btree
  end

  add_foreign_key "deal_tags", "deals"
  add_foreign_key "deal_tags", "tags"
  add_foreign_key "offers", "deals"
  add_foreign_key "offers", "users"
  add_foreign_key "user_traits", "traits"
  add_foreign_key "user_traits", "users"
  add_foreign_key "weights", "tags"
  add_foreign_key "weights", "traits"
end
