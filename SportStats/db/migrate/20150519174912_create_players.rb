class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.references :human
      t.references :team
      t.date :join_date
      t.date :depart_date
      t.text :reason_for_departure

      t.timestamps
    end
    add_index :players, :human_id
    add_index :players, :team_id
  end
end
