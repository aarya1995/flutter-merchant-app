class DashboardController < ApplicationController
	before_filter :authenticate_merchant!
	def main
		@merchant = current_merchant
		@offerings = Offering.where(merchant_id: @merchant.id).all
	end

	def new_offering
		#@offering = Offering.new
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
end
