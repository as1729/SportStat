class RemoveHasPlayoffsFromSeasons < ActiveRecord::Migration
  def up
    remove_column :seasons, :has_playoffs?
  end

  def down
    add_column :seasons, :has_playoffs?, :boolean
  end
end
