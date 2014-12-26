class CreateCrbs < ActiveRecord::Migration
  def change
    create_table :crbs do |t|
      t.integer :corp_no
      t.integer :rb_no
      t.string :note

      t.timestamps
    end
  end
end
