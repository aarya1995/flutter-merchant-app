class Offering < ActiveRecord::Base
	# This will be the base class for GeneralActivity,
	# BookableActivity, and Event
	belongs_to :merchant

	has_many :offering_images, :dependent => :destroy

	validates :title, :description, :venue_name, :address1, :city,
			  :state, :zipcode, presence: true

	serialize :activity_type, Array
	serialize :activity_topic, Array
	serialize :interests, Array
	serialize :outing_purpose, Array 
	serialize :moods, Array

end
