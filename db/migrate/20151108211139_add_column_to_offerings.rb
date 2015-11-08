class AddColumnToOfferings < ActiveRecord::Migration
  def change
    add_column :offerings, :is_offering_complete, :string
    add_column :offerings, :string, :string
  end
end
