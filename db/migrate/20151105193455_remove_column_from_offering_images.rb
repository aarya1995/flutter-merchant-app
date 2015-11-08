class RemoveColumnFromOfferingImages < ActiveRecord::Migration
  def change
    remove_column :offering_images, :offering_id, :integer
  end
end
