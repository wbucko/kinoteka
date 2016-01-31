class PagesController < ApplicationController

	def index
	end

	def movies
		@movies = Movie.where(show: false).sort {|a,b| b.overal_score.to_f <=> a.overal_score.to_f}[0..9]
	end

	def shows
		@shows = Movie.where(show: true).sort {|a,b| b.overal_score.to_f <=> a.overal_score.to_f}[0..9]
	end

end