class RemoveIsRecurringFromSeasons < ActiveRecord::Migration
  def up
    remove_column :seasons, :is_recurring?
  end

  def down
    add_column :seasons, :is_recurring?, :boolean
  end
end
