class AddKeywordsToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :keywords, :text
  end
end
