class AddEmailColumnToMerchantApplication < ActiveRecord::Migration
  def change
    add_column :merchant_applications, :email, :string
  end
end
