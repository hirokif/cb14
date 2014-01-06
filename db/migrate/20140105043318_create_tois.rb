class CreateTois < ActiveRecord::Migration
  def change
    create_table :tois do |t|
      t.string :toi_name
      t.references :grp, index: true

      t.timestamps
    end
  end
end
