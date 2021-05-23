class CreateSeasons < ActiveRecord::Migration[6.1]
  def change
    create_table :seasons do |t|
      t.string :name
      t.string :overview
      t.string :poster_path
      t.string :air_date
      t.integer :season_number
      t.references :tv_show, null: false, foreign_key: true

      t.timestamps
    end
  end
end
