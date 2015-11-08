class AddMoreStuffToOffering < ActiveRecord::Migration
  def change
  	add_column :offerings, :website, :string
  	add_column :offerings, :facebook, :string
  	add_column :offerings, :yelp, :string
  	add_column :offerings, :twitter, :string
  	add_column :offerings, :instagram, :string
  end
end
