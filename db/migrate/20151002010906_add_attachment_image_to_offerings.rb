class AddAttachmentImageToOfferings < ActiveRecord::Migration
  def self.up
    change_table :offerings do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :offerings, :image
  end
end
