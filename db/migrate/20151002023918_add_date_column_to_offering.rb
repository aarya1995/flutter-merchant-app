class AddDateColumnToOffering < ActiveRecord::Migration
  def change
    add_column :offerings, :date, :text
  end
end
