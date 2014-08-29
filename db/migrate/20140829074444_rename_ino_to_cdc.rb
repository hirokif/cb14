class RenameInoToCdc < ActiveRecord::Migration
  def change
    rename_column :cdcs, :ino, :lno
  end
end
