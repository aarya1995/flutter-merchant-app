class AddDaysColumnToOfferings < ActiveRecord::Migration
  def change
    add_column :offerings, :days, :text
  end
end
