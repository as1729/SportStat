class TeamsController < ApplicationController
	def show
		@teams = Array.new
		Team.where(season_id: params[:id]).find_each do |team|
			@teams << team
		end
		@teams
	end

	def view
		@team = Team.find(params[:id])
	end

end
