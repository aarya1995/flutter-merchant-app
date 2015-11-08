class AddVoucherToGeneralActivity < ActiveRecord::Migration
  def change
  	add_column :offerings, :voucher_name, :string
  	add_column :offerings, :voucher_description, :string
  end
end
