class AddAssociationToOfferingImages < ActiveRecord::Migration
  def change
  	add_reference :offering_images, :offering, index: true
  end
end
