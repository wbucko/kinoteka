class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :user_id
      t.string :name
      t.string :surname
      t.text :bio
      t.string :favorite

      t.timestamps null: false
    end
  end
end
