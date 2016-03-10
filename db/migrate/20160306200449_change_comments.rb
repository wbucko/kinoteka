class ChangeComments < ActiveRecord::Migration
  def change
  	change_table :comments do |t| 
	  	t.remove :movie_id, :user_id
	  	t.rename :movie_grade, :grade 
	  	t.references :commentable, polymorphic: true, index: true
	  end
  end
end


