class AddStartTimeColumnToOfferings < ActiveRecord::Migration
  def change
    add_column :offerings, :start_time, :text
  end
end
