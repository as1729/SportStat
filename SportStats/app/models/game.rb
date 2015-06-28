class Game < ActiveRecord::Base
  belongs_to :venue
  belongs_to :away_team, class_name: ‘Team’, foreign_key: :away_team_id
  belongs_to :home_team, class_name: ‘Team’, foreign_key: :home_team_id
  attr_accessible :away_team_id, :away_team_points, :date_time, :home_team_id, :home_team_points
end
