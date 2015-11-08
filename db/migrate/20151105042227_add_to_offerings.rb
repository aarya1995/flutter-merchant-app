class AddToOfferings < ActiveRecord::Migration
  def change
  	add_column :offerings, :title, :string
  	add_column :offerings, :description, :string
  	add_column :offerings, :activity_type, :string
  	add_column :offerings, :activity_topic, :string
  	add_column :offerings, :interests, :text
  	add_column :offerings, :outing_purpose, :text
  	add_column :offerings, :moods, :text
  	add_column :offerings, :quantity, :integer # used to represent number of offerings available to distribute
  	add_column :offerings, :terms, :text
  	add_column :offerings, :price, :integer
  	add_column :offerings, :address1, :string
  	add_column :offerings, :address2, :string
  	add_column :offerings, :city, :string
  	add_column :offerings, :state, :string
  	add_column :offerings, :zipcode, :string
	add_column :offerings, :venue_name, :string

	# scheduling info
	add_column :offerings, :frequency, :string
	add_column :offerings, :start_time, :text
	add_column :offerings, :end_time, :text
	add_column :offerings, :days, :text # array that will hold days of the week
	add_column :offerings, :repeat_monthly, :string # if frequency is monthly, this specifies if repeat is every 4 weeks or on same day of month
	add_column :offerings, :booking_close, :text # date and time that offering will be made unavailable
	add_column :offerings, :booking_start, :text # date and time of when offering goes live (made avaiable to book)
	add_column :offerings, :slots, :text # nested hash that will hold time slots for bookable offering
	add_column :offerings, :status, :string # indicates status of offering (pending, approved, live)

	add_column :offerings, :type, :string # will be used for STI
  end
end
