class AddAddressColumnToMerchant < ActiveRecord::Migration
  def change
    add_column :merchants, :address, :string
  end
end
