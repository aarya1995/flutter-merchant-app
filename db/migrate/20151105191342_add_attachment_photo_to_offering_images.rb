class AddAttachmentPhotoToOfferingImages < ActiveRecord::Migration
  def self.up
    change_table :offering_images do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :offering_images, :photo
  end
end
