class AddEndTimeColumnToOfferings < ActiveRecord::Migration
  def change
    add_column :offerings, :end_time, :text
  end
end
