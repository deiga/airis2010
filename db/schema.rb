# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100709184739) do

  create_table "announcements", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.boolean  "notification", :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", :force => true do |t|
    t.string   "title"
    t.string   "location"
    t.date     "startdate"
    t.integer  "duration",    :default => 1
    t.text     "description"
    t.text     "info"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "kennels", :force => true do |t|
    t.string   "kennel_name"
    t.string   "owner_name"
    t.string   "phone"
    t.string   "location"
    t.string   "email"
    t.string   "homepage"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "news", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.boolean  "notification", :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trimmers", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "ponumber"
    t.string   "location"
    t.string   "phone"
    t.string   "homepage"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
