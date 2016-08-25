class CreateKonwersjaKont < ActiveRecord::Migration
  def change

create_table "konwersja_kont", primary_key: "Id", id: :bigint, unsigned: true, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0" do |t|
    t.string "Rachunek",       limit: 30, default: "", null: false
    t.string "Konto_wn_plus",  limit: 15, default: "", null: false
    t.string "Konto_ma_plus",  limit: 15, default: "", null: false
    t.string "Konto_wn_minus", limit: 15, default: "", null: false
    t.string "Konto_ma_minus", limit: 15, default: "", null: false
    t.string "Manual",         limit: 10, default: "", null: false
    t.index ["Rachunek"], name: "Rachunek", unique: true, using: :btree
  end



  end
end
