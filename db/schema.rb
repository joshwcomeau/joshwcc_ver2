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

ActiveRecord::Schema.define(version: 20150131204853) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blog_posts", force: true do |t|
    t.text     "content"
    t.text     "abstract"
    t.string   "title"
    t.string   "author"
    t.integer  "min_read"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.boolean  "featured"
    t.string   "subtitle"
    t.string   "colour"
    t.boolean  "published"
    t.datetime "published_at"
  end

  create_table "images", force: true do |t|
    t.string   "src"
    t.integer  "placement"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "imageable_id"
    t.string   "imageable_type"
  end

  add_index "images", ["imageable_id"], name: "index_images_on_imageable_id", using: :btree

  create_table "projects", force: true do |t|
    t.string   "display_name"
    t.string   "thumb_path"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "overview"
    t.string   "stack"
    t.string   "colour"
    t.string   "demo_link"
    t.string   "github_link"
    t.string   "project_type"
    t.string   "project_length"
    t.string   "integration"
    t.text     "technical_challenges"
  end

  create_table "users", force: true do |t|
    t.string   "email",                        null: false
    t.string   "crypted_password",             null: false
    t.string   "salt",                         null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["remember_me_token"], name: "index_users_on_remember_me_token", using: :btree

end
