class CreateCdcs < ActiveRecord::Migration
  def change
    create_table :cdcs do |t|
      t.integer :corp_no
      t.integer :toi_no
      t.integer :ino
      t.date :dgl
      t.integer :amv

      t.timestamps
    end
  end
end
