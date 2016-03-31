class AddSlugToDirectors < ActiveRecord::Migration
  def change
    add_column :directors, :slug, :string
    add_index :directors, :slug
  end
end
