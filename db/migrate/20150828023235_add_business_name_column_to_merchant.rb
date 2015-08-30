class AddBusinessNameColumnToMerchant < ActiveRecord::Migration
  def change
    add_column :merchants, :business_name, :string
  end
end
