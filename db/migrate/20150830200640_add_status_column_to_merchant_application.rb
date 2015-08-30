class AddStatusColumnToMerchantApplication < ActiveRecord::Migration
  def change
    add_column :merchant_applications, :status, :string
  end
end
