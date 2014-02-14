class CreateCdks < ActiveRecord::Migration
  def change
    create_table :cdks do |t|
      t.integer :corp_no
      t.integer :toi_no
      t.integer :pp
      t.integer :mr
      t.integer :egr_fr
      t.integer :egr_bb
      t.integer :egr_sr
      t.integer :egr_or

      t.timestamps
    end
  end
end
