class AddSlugToGenres < ActiveRecord::Migration
  def change
    add_column :genres, :slug, :string
    add_index :genres, :slug
  end
end
