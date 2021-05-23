class CreateEpisodes < ActiveRecord::Migration[6.1]
  def change
    create_table :episodes do |t|
      t.integer :season_number
      t.string :still_path
      t.integer :episode_number
      t.string :name
      t.string :overview
      t.string :vote_average
      t.string :air_date
      t.references :season, null: false, foreign_key: true

      t.timestamps
    end
  end
end
