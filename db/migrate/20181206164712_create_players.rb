class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.string :personal_info
      t.string :team
      t.string :stats
      t.string :league

      t.timestamps
    end
  end
end
