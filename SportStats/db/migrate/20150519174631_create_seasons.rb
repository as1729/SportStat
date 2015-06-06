class CreateSeasons < ActiveRecord::Migration
  def change
    create_table :seasons do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.integer :number_of_teams
      t.integer :min_age
      t.string :gender
      t.boolean :has_playoffs?
      t.boolean :is_recurring?
      t.integer :min_players_per_team
      t.integer :max_players_per_team
      t.references :league
      t.references :sport

      t.timestamps
    end
    add_index :seasons, :league_id
    add_index :seasons, :sport_id
  end
end
