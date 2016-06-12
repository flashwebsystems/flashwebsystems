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

ActiveRecord::Schema.define(version: 20160611010344) do

  create_table "logins", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "lastname",        limit: 255
    t.string   "email",           limit: 255
    t.string   "password",        limit: 255
    t.float    "sexo",            limit: 24
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "password_digest", limit: 255
  end

  create_table "users", force: :cascade do |t|
    t.float    "latitude",          limit: 24
    t.float    "longitude",         limit: 24
    t.string   "address",           limit: 255
    t.text     "description",       limit: 65535
    t.string   "title",             limit: 255
    t.datetime "created_at",                                               null: false
    t.datetime "updated_at",                                               null: false
    t.decimal  "price_day",                       precision: 9,  scale: 2
    t.decimal  "price_month",                     precision: 9,  scale: 2
    t.string   "No_Disponibilidad", limit: 255
    t.string   "No_Horario",        limit: 255
    t.string   "No_TamannoAuto",    limit: 255
    t.string   "No_Nivel",          limit: 255
    t.decimal  "telefono",                        precision: 10
    t.integer  "login_id",          limit: 4
  end

  add_index "users", ["login_id"], name: "index_users_on_login_id", using: :btree

  add_foreign_key "users", "logins"
end
