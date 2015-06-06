class SeasonsController < ApplicationController
	def index
		@seasons = Season.all
	end
	def show
		@seasons = Array.new
		Season.where(league_id: params[:id]).find_each do |season|
			@seasons << season
		end
		@seasons
	end

end
