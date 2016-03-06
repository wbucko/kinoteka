class AddColumnsToDirector < ActiveRecord::Migration
  def change
    add_column :directors, :photo_url, :string
    add_column :directors, :birth, :date
    add_column :directors, :bio, :text
  end
end
