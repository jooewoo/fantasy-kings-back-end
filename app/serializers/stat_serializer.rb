class StatSerializer < ActiveModel::Serializer
  attributes :id, :rank, :player, :position, :age, :team, :games_played, :games_started, :minutes, :fg, :fga, :fg_percentage, :three_pointers, :three_point_attempts, :three_point_percentage, :two_pointers, :two_point_attempts, :two_point_percentage, :eFG, :ft, :fta, :ftp, :orb, :drb, :trb, :ast, :stl, :blk, :tov, :pf, :points
  has_one :user
  has_one :stat
end
