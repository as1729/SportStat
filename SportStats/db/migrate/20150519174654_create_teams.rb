class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.references :season

      t.timestamps
    end
    add_index :teams, :season_id
  end
end
