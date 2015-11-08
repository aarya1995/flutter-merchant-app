class DropOfferingsTable < ActiveRecord::Migration
  def change
  	drop_table :offerings
  end
end
