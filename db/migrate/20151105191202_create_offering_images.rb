class CreateOfferingImages < ActiveRecord::Migration
  def change
    create_table :offering_images do |t|
      t.string :caption
      t.integer :offering_id

      t.timestamps
    end
  end
end
