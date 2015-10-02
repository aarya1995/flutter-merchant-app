class AddFrequencyColumnToOffering < ActiveRecord::Migration
  def change
    add_column :offerings, :frequency, :string
  end
end
