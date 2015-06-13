class Season < ActiveRecord::Base
  has_many :teams
  belongs_to :league
  belongs_to :sport
  attr_accessible :end_date, :gender, :has_playoffs?, :is_recurring?, :max_players_per_team, :min_age, :min_players_per_team, :name, :number_of_teams, :start_date
end
