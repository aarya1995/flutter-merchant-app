class AddOfferingController < ApplicationController
	include Wicked::Wizard

	steps :scheduling, :booking

	def show
		@offering_id = session[:offering_id]
		@offering = Offering.find_by(id: @offering_id)
		render_wizard
	end

	def update
		@offering_id = session[:offering_id]
		@offering = Offering.find_by(id: @offering_id)
		case step
		when :scheduling
			@offering.update_attributes(:frequency => params[:offering][:frequency], :start_time => params[:start_time],
				:end_time => params[:end_time], :days => params[:days])
		when :booking
			@offering.update_attributes(:price => params[:price], :quantity => params[:quantity], :website => params[:website],
				:facebook => params[:facebook], :twitter => params[:twitter])
		end
		render_wizard @offering
	end

	private
	
	def finish_wizard_path
	  '/dashboard/main'
	end
end
