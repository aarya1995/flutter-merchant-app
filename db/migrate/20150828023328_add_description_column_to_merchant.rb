class AddDescriptionColumnToMerchant < ActiveRecord::Migration
  def change
    add_column :merchants, :description, :string
  end
end
