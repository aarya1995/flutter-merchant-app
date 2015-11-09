class AddBookingController < ApplicationController
	include Wicked::Wizard

	# controller for booking -- defining the wizard step logic
	steps :tagging, :scheduling, :booking

	def show
	    @booking_id = session[:booking_id]
		@booking = Offering.find_by(id: @booking_id)
		render_wizard
	end

	def update
		@booking_id = session[:booking_id]
		@booking = Offering.find_by(id: @booking_id)
		
		case step
		when :tagging
			@booking.update_attributes(:activity_type => params[:bookable_activity][:activity_type], 
				:activity_topic => params[:bookable_activity][:activity_topic],
				:interests => params[:bookable_activity][:interests], 
				:outing_purpose => params[:bookable_activity][:outing_purpose],
				:moods => params[:bookable_activity][:moods])

		when :scheduling
			
		when :booking
		  
		end

		render_wizard @booking	
	end

	private
	
	def finish_wizard_path
	  '/dashboard/offerings_index'
	end
end
