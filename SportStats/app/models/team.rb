class Team < ActiveRecord::Base
  belongs_to :season
  has_many :players
  attr_accessible :name
end
