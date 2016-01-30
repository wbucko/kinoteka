require 'test_helper'

class MovieTest < ActiveSupport::TestCase

	def setup
		@movie = Movie.new(title: 'aaa', year: 1995, director: 'sada', amazon_id: 'ss', show: true, review: 'aaaaaaaaaa aaaaaaaaaa aaaaaaaaaa aaaaaaaaaa aaaaaaaaaa aaaaaaaaaa aaaaaaaaaa aaaaaaaaaa aaaaaaaaaa aaaaaaaaaa aaaaaaaaaa aaaaaaaaaa aaaaaaaaaa aaaaaaaaaa')
	end

	test 'movie should be valid' do
		assert @movie.valid?
	end

	test 'movie should have title' do
		@movie.title = ''
		assert_not @movie.valid?
	end

	test 'movie should have year' do
		@movie.year = ''
		assert_not @movie.valid?
	end

	test 'movie should have director' do
		@movie.director = ''
		assert_not @movie.valid?
	end

	test 'movie should have amazon_id' do
		@movie.amazon_id = ''
		assert_not @movie.valid?
	end

	test 'movie should have review' do
		@movie.review = ''
		assert_not @movie.valid?
	end

	test 'movie should be recorded after 1990' do
		@movie.year = 1895
		assert_not @movie.valid?
	end

	test 'movie review should be longer than 140 char.' do
		@movie.review = 'aa'
		assert_not @movie.valid?
	end	

end 