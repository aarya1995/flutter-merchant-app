class RemoveStringColumnFromOfferings < ActiveRecord::Migration
  def change
    remove_column :offerings, :string, :string
  end
end
