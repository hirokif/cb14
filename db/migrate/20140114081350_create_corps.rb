class CreateCorps < ActiveRecord::Migration
  def change
    create_table :corps do |t|
      t.integer :corp_no
      t.string :corp_name
      t.string :corp_namek
      t.string :corp_posi
      t.string :corp_rep
      t.string :corp_repk
      t.date :rep_bth
      t.string :corp_add
      t.string :corp_tel
      t.string :corp_fax
      t.string :corp_mail
      t.integer :cap
      t.integer :cy
      t.integer :emp
      t.date :acc
      t.string :corp2_name
      t.string :corp2_namek
      t.string :corp2_posi
      t.string :corp2_rep
      t.string :corp2_repk
      t.date :rep2_bth
      t.string :corp2_add
      t.string :corp2_tel
      t.string :corp2_fax
      t.string :corp2_mail

      t.timestamps
    end
    add_index :corps, :corp_no, unique: true
  end
end
