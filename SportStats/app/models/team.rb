class Team < ActiveRecord::Base
  belongs_to :season
  attr_accessible :name
end
