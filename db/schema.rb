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

ActiveRecord::Schema.define(version: 20160809140913) do

  create_table "dodatkowe", primary_key: "id_konw_kont", id: :bigint, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "rachunek", limit: 50, null: false
    t.string "data",     limit: 25, null: false
    t.string "kwota",    limit: 25, null: false
    t.string "waluta",   limit: 3,  null: false
    t.string "opis1",               null: false
    t.string "opis2",               null: false
    t.string "opis3",               null: false
    t.string "kontr1",              null: false
    t.string "kontr2",              null: false
    t.string "kontr3",              null: false
    t.index ["rachunek"], name: "rachunek", unique: true, using: :btree
  end

  create_table "konta", primary_key: "Id", id: :bigint, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8" do |t|
    t.string "parametr", limit: 10
    t.string "wartosc",  limit: 10
  end

  create_table "konwersja_kont", primary_key: "Id", id: :bigint, unsigned: true, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0" do |t|
    t.string "Rachunek",       limit: 30, default: "", null: false
    t.string "Konto_wn_plus",  limit: 15, default: "", null: false
    t.string "Konto_ma_plus",  limit: 15, default: "", null: false
    t.string "Konto_wn_minus", limit: 15, default: "", null: false
    t.string "Konto_ma_minus", limit: 15, default: "", null: false
    t.string "Manual",         limit: 10, default: "", null: false
    t.index ["Rachunek"], name: "Rachunek", unique: true, using: :btree
  end

  create_table "opisy", id: :bigint, unsigned: true, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8" do |t|
    t.bigint "konto",            default: 0,  null: false, unsigned: true
    t.string "tekst", limit: 33, default: "", null: false
    t.index ["konto", "tekst"], name: "konto", using: :btree
    t.index ["tekst"], name: "tekst", type: :fulltext
  end

  create_table "table 4", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8" do |t|
    t.string "COL 1",  limit: 1
    t.bigint "COL 2"
    t.string "COL 3",  limit: 5
    t.string "COL 4",  limit: 12
    t.string "COL 5",  limit: 12
    t.string "COL 6",  limit: 5
    t.string "COL 7",  limit: 5
    t.string "COL 8",  limit: 10
    t.string "COL 9",  limit: 10
    t.string "COL 10", limit: 10
    t.string "COL 11", limit: 10
    t.string "COL 12", limit: 10
    t.string "COL 13", limit: 10
    t.string "COL 14", limit: 10
    t.string "COL 15", limit: 10
  end

  create_table "table 5", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8" do |t|
    t.string "COL 1",  limit: 1
    t.bigint "COL 2"
    t.string "COL 3",  limit: 5
    t.string "COL 4",  limit: 12
    t.string "COL 5",  limit: 12
    t.string "COL 6",  limit: 5
    t.string "COL 7",  limit: 5
    t.string "COL 8",  limit: 10
    t.string "COL 9",  limit: 10
    t.string "COL 10", limit: 10
    t.string "COL 11", limit: 10
    t.string "COL 12", limit: 10
    t.string "COL 13", limit: 10
    t.string "COL 14", limit: 10
    t.string "COL 15", limit: 10
  end

  create_table "table 6", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8" do |t|
    t.string "COL 1",  limit: 1
    t.string "COL 2",  limit: 26
    t.string "COL 3",  limit: 5
    t.string "COL 4",  limit: 12
    t.string "COL 5",  limit: 12
    t.string "COL 6",  limit: 5
    t.string "COL 7",  limit: 5
    t.string "COL 8",  limit: 10
    t.string "COL 9",  limit: 10
    t.string "COL 10", limit: 10
    t.string "COL 11", limit: 10
    t.string "COL 12", limit: 10
    t.string "COL 13", limit: 10
    t.string "COL 14", limit: 10
    t.string "COL 15", limit: 10
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "username"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["username"], name: "index_users_on_username", using: :btree
  end

end
