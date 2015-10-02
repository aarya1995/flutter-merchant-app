class AddColumnsToOfferings < ActiveRecord::Migration
  def change
  	add_column :offerings, :price, :string
  	add_column :offerings, :quantity, :string
  	add_column :offerings, :website, :string
  	add_column :offerings, :facebook, :string
  	add_column :offerings, :twitter, :string
  end
end
