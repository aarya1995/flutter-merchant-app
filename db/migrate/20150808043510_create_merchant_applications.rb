class CreateMerchantApplications < ActiveRecord::Migration
  def change
    create_table :merchant_applications do |t|
      t.string :name
      t.string :category
      t.string :description
      t.string :address

      t.timestamps
    end
  end
end
