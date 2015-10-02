class RemoveDateColumnFromOfferings < ActiveRecord::Migration
  def change
    remove_column :offerings, :date, :text
  end
end
