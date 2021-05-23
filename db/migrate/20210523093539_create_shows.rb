class CreateShows < ActiveRecord::Migration[6.1]
  def change
    create_table :shows do |t|
      t.string :name
      t.string :backdrop_path
      t.string :first_air_date
      t.string :last_air_date
      t.string :overview
      t.string :poster_path
      t.string :rate_average
      t.string :genres
      t.integer :number_of_seasons
      t.integer :number_of_episodes

      t.timestamps
    end
  end
end
