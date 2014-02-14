class CreateTois < ActiveRecord::Migration
  def change
    create_table :tois do |t|
      t.integer :toi_no
      t.string :toi_name
      t.integer :grp_no

      t.timestamps
    end
    add_index :tois, :toi_no, unique: true
  end
end
