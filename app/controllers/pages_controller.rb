class PagesController < ApplicationController

	def index
	end

	def movies
		@movies = Movie.where(show: false).sort {|a,b| b.overal_score.to_i <=> a.overal_score.to_i}[0..9]
	end

	def shows
		@shows = Movie.where(show: true).sort {|a,b| b.overal_score.to_i <=> a.overal_score.to_i}[0..9]
	end

end