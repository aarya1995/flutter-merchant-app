class AddStuffToOfferings < ActiveRecord::Migration
  def change
  	add_column :offerings, :activity_type, :string
  	add_column :offerings, :activity_topic, :string
  	add_column :offerings, :fine_print, :text
  	add_column :offerings, :interests, :text
  	add_column :offerings, :outing_purpose, :text
  	add_column :offerings, :moods, :text
  end
end
