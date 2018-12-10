# frozen_string_literal: true

require 'csv'

Player.transaction do
  CSV.foreach(Rails.root + 'nba-stats-17-18.csv',
              headers: true,
              header_converters: ->(h) { h.downcase.to_sym }) do |player_row|
    player = player_row.to_hash
    Player.create player unless player.exists? player
  end
end
