class CreateStats < ActiveRecord::Migration[5.2]
  def change
    create_table :stats do |t|
      t.integer :rank
      t.string :player
      t.string :position
      t.integer :age
      t.string :team
      t.integer :games_played
      t.integer :games_started
      t.integer :minutes
      t.integer :fg
      t.integer :fga
      t.float :fg_percentage
      t.integer :three_pointers
      t.integer :three_point_attempts
      t.float :three_point_percentage
      t.integer :two_pointers
      t.integer :two_point_attempts
      t.float :two_point_percentage
      t.float :eFG
      t.integer :ft
      t.integer :fta
      t.float :ftp
      t.integer :orb
      t.integer :drb
      t.integer :trb
      t.integer :ast
      t.integer :stl
      t.integer :blk
      t.integer :tov
      t.integer :pf
      t.integer :points

      t.timestamps
    end
  end
end
