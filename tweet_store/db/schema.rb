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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130821193602) do

  create_table "firefighters", :force => true do |t|
    t.string   "name"
    t.integer  "age"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "fires", :force => true do |t|
    t.string   "location"
    t.integer  "intensity"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "items", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "price"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "todo", :id => false, :force => true do |t|
    t.string  "task",        :limit => 25
    t.string  "description"
    t.string  "due_date",    :limit => 5
    t.boolean "completed"
  end

  create_table "tweets", :force => true do |t|
    t.integer "user_id"
    t.time    "created_at"
    t.string  "id_str"
    t.string  "text"
    t.string  "source"
    t.string  "in_reply_to_status_id"
    t.string  "in_reply_to_status_id_str"
    t.string  "in_reply_to_user_id"
    t.string  "in_reply_to_user_id_str"
    t.string  "in_reply_to_screen_name"
    t.string  "geo"
    t.string  "coordinates"
    t.string  "place"
    t.string  "contributors"
    t.integer "retweet_count"
    t.integer "favorite_count"
    t.string  "filter_level"
    t.string  "lang"
  end

  create_table "users", :force => true do |t|
    t.string  "id_str"
    t.string  "name"
    t.string  "screen_name"
    t.string  "location"
    t.string  "url"
    t.string  "description"
    t.integer "followers_count"
    t.integer "friends_count"
    t.integer "listed_count"
    t.string  "created_at"
    t.integer "favourites_count"
    t.string  "utc_offset"
    t.string  "time_zone"
    t.integer "statuses_count"
    t.string  "lang"
    t.string  "profile_background_color"
    t.string  "profile_background_image_url"
    t.string  "profile_background_image_url_https"
    t.string  "profile_image_url"
    t.string  "profile_image_url_https"
    t.string  "profile_banner_url"
    t.string  "profile_link_color"
    t.string  "profile_sidebar_border_color"
    t.string  "profile_sidebar_fill_color"
    t.string  "profile_text_color"
    t.string  "following"
    t.string  "follow_request_sent"
    t.string  "notifications"
  end

end
