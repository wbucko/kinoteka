class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.boolean :like
      t.integer :user_id
      t.integer :comment_id
    end
  end
end
