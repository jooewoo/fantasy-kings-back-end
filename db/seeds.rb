# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rails db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

# CSV.open('nba-stats-17-18.csv') do |row|
#   puts row
# end
# players = []

# CSV.foreach('nba-stats-17-18.csv') do |row|
#   p row
# end

arr_of_arrs = CSV.read('./nba-stats-17-18.csv')
p arr_of_arrs
# CSV.open('nba-stats-17-18.csv', :headers => true) do |csv|
#   CSV.foreach('Old.csv',
#     :write_headers => true,
#     :headers => ['Rank', 'Player', 'Pos', 'Age', 'Team', 'GP', 'GS', 'MP',
#                  'FG', 'FGA', 'FG%', '3P', '3PA', '3P%', '2P', '2PA', '2P%', 'eFG%', 'FT', 'FTA', 'FT%', 'ORB', 'DRB', 'TRB',
#                   'AST', 'STL', 'BLK', 'TOV', 'PF', 'PTS']
#   ) do |row|
#     player['article_category_id'] = player['article_category_id']
#     csv << row
#   end
# end

# p players
