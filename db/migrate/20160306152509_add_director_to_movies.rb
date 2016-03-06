class AddDirectorToMovies < ActiveRecord::Migration
  def change
		remove_column :movies, :director, :string
		add_column :movies, :director_id, :integer
  end
end


