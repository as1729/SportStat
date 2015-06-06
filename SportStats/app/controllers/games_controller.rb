class GamesController < ApplicationController
	def schedule
		@games = Array.new
		Game.where(home_team_id: params[:id]).find_each do |game|
			@games << game
		end
		Game.where(away_team_id: params[:id]).find_each do |game|
			@games << game
		end
		@games
	end

end
