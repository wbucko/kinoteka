class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.integer :movie_id
    	t.integer :user_id
    	t.string :content
    	t.integer :movie_grade
    	t.timestamps
    end
  end
end
