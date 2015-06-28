class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :home_team_id
      t.integer :away_team_id
      t.integer :home_team_points
      t.integer :away_team_points
      t.references :venue
      t.datetime :date_time

      t.timestamps
    end
    add_index :games, :venue_id
  end
end
