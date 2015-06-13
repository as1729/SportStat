class Human < ActiveRecord::Base
  attr_accessible :dob, :name, :phone
  has_many :players
end
