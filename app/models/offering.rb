class Offering < ActiveRecord::Base
	serialize :days, Array
	belongs_to :merchant

	has_attached_file :image

	validates_attachment :image,
						 content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
end
