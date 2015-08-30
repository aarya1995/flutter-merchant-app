class RemoveStatusColumnFromMerchantApplication < ActiveRecord::Migration
  def change
    remove_column :merchant_applications, :status, :boolean
  end
end
