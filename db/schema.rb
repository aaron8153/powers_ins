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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110105150251) do

  create_table "about_headings", :force => true do |t|
    t.string   "heading"
    t.text     "description"
    t.string   "page"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "subheading"
  end

  create_table "auto_ids", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "street_address"
    t.string   "street_address_cont"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone_work"
    t.string   "phone_home"
    t.string   "policy_number"
    t.integer  "vehicle_year"
    t.string   "vehicle_make"
    t.string   "vehicle_model"
    t.string   "vin"
    t.text     "misc"
    t.string   "division"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "blogs", :force => true do |t|
    t.string   "headline"
    t.text     "description"
    t.string   "poster_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", :force => true do |t|
    t.string   "poster"
    t.text     "description"
    t.integer  "blog_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "policy_changes", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "street_address"
    t.string   "street_address_cont"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone_work"
    t.string   "phone_home"
    t.string   "policy_number"
    t.date     "change_date"
    t.text     "description"
    t.text     "misc"
    t.string   "division"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tickers", :force => true do |t|
    t.string   "headline"
    t.string   "url"
    t.boolean  "target"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
