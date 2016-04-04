class ChangeDatatypeInProfiles < ActiveRecord::Migration
  def change
  	# change_column :profiles, :user_id, :integer
  	change_column :profiles, :user_id, 'integer USING CAST(user_id AS integer)'
  end
end

