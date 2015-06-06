class Player < ActiveRecord::Base
  belongs_to :human
  belongs_to :team
  attr_accessible :depart_date, :join_date, :reason_for_departure
end
