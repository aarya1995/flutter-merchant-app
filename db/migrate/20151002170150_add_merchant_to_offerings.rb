class AddMerchantToOfferings < ActiveRecord::Migration
  def change
    add_reference :offerings, :merchant, index: true
  end
end
