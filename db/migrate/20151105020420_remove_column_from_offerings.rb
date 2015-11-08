class RemoveColumnFromOfferings < ActiveRecord::Migration
  def change
    remove_column :offerings, :address, :string
  end
end
