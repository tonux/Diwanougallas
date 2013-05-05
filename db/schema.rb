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

ActiveRecord::Schema.define(:version => 20130428231052) do

  create_table "articles", :force => true do |t|
    t.string   "titre"
    t.text     "contenu"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "articles", ["user_id"], :name => "index_articles_on_user_id"

  create_table "category_galeris", :force => true do |t|
    t.string   "titre"
    t.text     "desc"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "category_videos", :force => true do |t|
    t.string   "nom"
    t.text     "desc"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "comments", :force => true do |t|
    t.text     "contenu"
    t.integer  "article_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "comments", ["article_id"], :name => "index_comments_on_article_id"

  create_table "dahiras", :force => true do |t|
    t.string   "nom"
    t.text     "desc"
    t.string   "adresse"
    t.integer  "region_id"
    t.string   "telephone"
    t.string   "photo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "dahiras", ["region_id"], :name => "index_dahiras_on_region_id"

  create_table "evenements", :force => true do |t|
    t.string   "title"
    t.text     "desc"
    t.string   "lieu"
    t.date     "date_event"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "galeris", :force => true do |t|
    t.string   "titre"
    t.text     "desc"
    t.string   "photo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "lieux_historiques", :force => true do |t|
    t.string   "nom"
    t.text     "desc"
    t.string   "photo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "regions", :force => true do |t|
    t.string   "nom"
    t.string   "desc"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "nom"
    t.string   "prenom"
    t.string   "telephone"
    t.string   "photo"
    t.integer  "dahira_id"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.boolean  "admin"
    t.boolean  "adminArticle"
  end

  add_index "users", ["dahira_id"], :name => "index_users_on_dahira_id"
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "videos", :force => true do |t|
    t.string   "title"
    t.string   "lien"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
