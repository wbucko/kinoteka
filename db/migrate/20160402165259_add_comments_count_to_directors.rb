class AddCommentsCountToDirectors < ActiveRecord::Migration
  def change
    add_column :directors, :comments_count, :integer, default: 0

    Director.reset_column_information
 		Director.find_each do |p|
	    Director.update_counters p.id, comments_count: p.comments.length
	  end
  end
end
