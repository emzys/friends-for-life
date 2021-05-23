# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require_relative '../.api_key'

require 'json'
require 'open-uri'

puts 'Cleaning database...'
TvShow.destroy_all

puts 'Creating tv-shows...'

tv_show_url = "https://api.themoviedb.org/3/tv/1668?api_key=#{$api_key}&language=en-US"
tv_show_serialized = URI.open(tv_show_url).read
tv_show = JSON.parse(tv_show_serialized)
TvShow.create!(
  name: tv_show['name'],
  overview: tv_show['overview'],
  poster_path: "https://image.tmdb.org/t/p/original#{tv_show['poster_path']}",
  backdrop_path: "https://image.tmdb.org/t/p/original#{tv_show['backdrop_path']}",
  first_air_date: tv_show['first_air_date'],
  last_air_date: tv_show['last_air_date'],
  number_of_seasons: tv_show['number_of_seasons'],
  number_of_episodes: tv_show['number_of_episodes'],
  genres: "#{tv_show['genres'][0]['name']}, #{tv_show['genres'][1]['name']}" ,
  rate_average: tv_show['vote_average']
)

p TvShow.all

puts "...created #{TvShow.count} movies"
