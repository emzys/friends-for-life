class RenameShowTable < ActiveRecord::Migration[6.1]
  def change
    rename_table :shows, :tv_shows
  end
end
