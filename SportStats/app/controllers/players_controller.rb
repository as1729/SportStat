class PlayersController < ApplicationController
	def show
		@players = Array.new
		Player.where(team_id: params[:id]).find_each do |player|
			@players << player
		end
		@players
	end
end
