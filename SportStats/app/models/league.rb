class League < ActiveRecord::Base
  has_many :seasons
  attr_accessible :name
end
