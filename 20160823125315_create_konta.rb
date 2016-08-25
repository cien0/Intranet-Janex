class CreateKonta < ActiveRecord::Migration[5.0]
  def change
    create_table :konta do |t|
      t.integer :Id
      t.string :Rachunek
      t.string :Konto_wn_plus
      t.string :Konto_ma_plus
      t.string :Konto_wn_minus
      t.string :Konto_ma_minus
      t.boolean :Manual

      t.timestamps
    end
  end
end
