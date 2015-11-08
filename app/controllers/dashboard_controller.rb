class DashboardController < ApplicationController
	before_filter :authenticate_merchant!
	def main
		@merchant = current_merchant
		@offerings = Offering.where(merchant_id: @merchant.id).all
	end

	def new_offering
		# @offering = Offering.new
	end

	def offerings_index
		@offerings = Offering.where(is_offering_complete: "true").all
	end

	def new_activity
		@activity = GeneralActivity.new
	end

	def create_activity
		@activity = GeneralActivity.new(activity_params)
		@activity.merchant_id = current_merchant.id
		@activity.is_offering_complete = "false"
		if params[:photos].length <= 3 && @activity.save
			
			# handling image upload #
			params[:photos].each { |photo|
				@activity.offering_images.create(photo: photo)
			}
			# image upload logic complete #
			
			session[:activity_id] = @activity.id # to remember which activity to modify
			redirect_to add_activity_path(:tagging)
		else
			render 'new_activity'
		end
	end

	def create_offering
		@offering = Offering.new(offering_params)
		@offering.merchant_id = current_merchant.id
		if @offering.save
			# redirect to wicked wizard
			session[:offering_id] = @offering.id # to remember which offering to modify
			redirect_to add_offering_path(:scheduling)
		else
			render 'new_offering'
		end
	end

	private

	def offering_params
		params.require(:offering).permit(:image, :title, :venue, :address, :description, :frequency, 
			:start_time, :end_time, :days, :price, :quantity, :website, :facebook, :twitter)
	end

	def activity_params
		params.require(:general_activity).permit(:title, :description, :venue_name, :address1, :address2, 
			:city, :state, :zipcode) # only params required for step 1
	end
end
