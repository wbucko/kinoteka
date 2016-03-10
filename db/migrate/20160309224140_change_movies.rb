class ChangeMovies < ActiveRecord::Migration
  def change
  	change_table :movies do |t| 
  		t.rename :amazon_id, :photo_url
  	end 
  end
end
