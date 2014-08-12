class CreateRbs < ActiveRecord::Migration
  def change
    create_table :rbs do |t|
      t.integer :rb_no
      t.string :rb_name
      t.integer :toi_no

      t.timestamps
    end
  end
end
