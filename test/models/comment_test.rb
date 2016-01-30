require 'test_helper'

class CommentTest < ActiveSupport::TestCase

	def setup
		@comment = Comment.new(movie_id: 1, user_id: 1, movie_grade: 5, content: 'aasad aasad aasad aasad aasad aasad aasad aasad aasad aasad aasad aasad aasad aasad aasad')
	end

	test 'comment must be valid' do
		assert @comment.valid?
	end

	test 'comment should have movie_id' do
		@comment.movie_id = ''
		assert_not @comment.valid?
	end

	test 'comment should have user_id' do
		@comment.user_id = ''
		assert_not @comment.valid?
	end

	test 'comment should have movie_grade' do
		@comment.movie_grade = ''
		assert_not @comment.valid?
	end

	test 'comment should have content > 40' do
		@comment.content = 'assdaf'
		assert_not @comment.valid?
	end

end