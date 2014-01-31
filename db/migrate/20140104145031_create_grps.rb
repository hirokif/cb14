class CreateGrps < ActiveRecord::Migration
  def change
    create_table :grps do |t|
      t.string :grp_name
      t.integer :grp_no
      t.timestamps
    end
    add_index :grps, :grp_no, unique: true
  end
end
