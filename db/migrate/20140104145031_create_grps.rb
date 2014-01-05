class CreateGrps < ActiveRecord::Migration
  def change
    create_table :grps do |t|
      t.string :grp_name

      t.timestamps
    end
  end
end
