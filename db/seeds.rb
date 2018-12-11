# frozen_string_literal: true

require 'csv'
require 'pry'

csv_text = File.read(Rails.root.join('db', 'nba-stats-17-18.csv'))

csv = CSV.parse(csv_text, headers: true, :col_sep => ',', row_sep: :auto)
csv.map(&:to_hash)[0..540].each do |row|
  stats = {
    rank: row['Rank'].to_i,
    player: row['Player'].split('\\')[0],
    position: row['Position'],
    age: row['Age'].to_i,
    team: row['Team'],
    games_played: row['Games_Played'].to_i,
    games_started: row['Games_Started'].to_i,
    minutes: row['Minutes'].to_i,
    fg: row['FG'].to_i,
    fga: row['FGA'].to_i,
    fg_percentage: row['FG_Percentage'].to_f,
    three_pointers: row['Three_Pointers'].to_i,
    three_point_attempts: row['Three_Point_Attempts'].to_i,
    three_point_percentage: row['Three_Point_Percentage'].to_f,
    two_pointers: row['Two_Pointers'].to_i,
    two_point_attempts: row['Two_Point_Attempts'].to_i,
    two_point_percentage: row['Two_Point_Percentage'].to_f,
    eFG: row['eFG'].to_f,
    ft: row['FT'].to_i,
    fta: row['FTA'].to_i,
    ftp: row['FT_Percentage'].to_f,
    orb: row['ORB'].to_i,
    drb: row['DRB'].to_i,
    trb: row['TRB'].to_i,
    ast: row['AST'].to_i,
    stl: row['STL'].to_i,
    blk: row['BLK'].to_i,
    tov: row['TOV'].to_i,
    pf: row['PF'].to_i,
    points: row['POINTS'].to_i
  }
  Stat.create(stats)
end
