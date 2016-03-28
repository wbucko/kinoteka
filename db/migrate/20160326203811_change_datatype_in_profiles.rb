class ChangeDatatypeInProfiles < ActiveRecord::Migration
  def change
  	change_column :profiles, :user_id, :integer
  end
end

