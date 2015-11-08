class AddActivityController < ApplicationController
	include Wicked::Wizard

	# controller for general activity -- defining the wizard step logic
	steps :tagging, :scheduling, :booking

	def show
		@activity_id = session[:activity_id]
		@activity = Offering.find_by(id: @activity_id)
		render_wizard
	end

	def update
		@activity_id = session[:activity_id]
		@activity = Offering.find_by(id: @activity_id)
		slots_empty = true
		case step
		when :tagging
			@activity.update_attributes(:activity_type => params[:general_activity][:activity_type], 
				:activity_topic => params[:general_activity][:activity_topic],
				:interests => params[:general_activity][:interests], 
				:outing_purpose => params[:general_activity][:outing_purpose],
				:moods => params[:general_activity][:moods])

		when :scheduling
			slots = Hash.new

			params.each_pair{ |k,v|
				if k == "Monday" && v != ["", ""]
					slots[k] = v
				elsif k == "Tuesday" && v != ["", ""]
					slots[k] = v
				elsif k == "Wednesday" && v != ["", ""]
					slots[k] = v
				elsif k == "Thursday" && v != ["", ""]
					slots[k] = v
				elsif k == "Friday" && v != ["", ""]
					slots[k] = v
				elsif k == "Saturday" && v != ["", ""]
					slots[k] = v
				elsif k == "Sunday" && v != ["", ""]
					slots[k] = v
				elsif k == "Everyday" && v != ["", ""]
					slots[k] = v
				end
			}
			
			@activity.update_attributes(:slots => slots)
		when :booking
		  @activity.update_attributes(:voucher_name => params[:general_activity][:voucher_name], 
				:voucher_description => params[:general_activity][:voucher_description],
				:price => params[:general_activity][:price], :quantity => params[:quantity],
				:terms => params[:general_activity][:terms], :website => params[:general_activity][:website],
				:facebook => params[:general_activity][:facebook], :yelp => params[:general_activity][:yelp],
				:twitter => params[:general_activity][:twitter], :instagram => params[:general_activity][:instagram],
				:status => "pending", :is_offering_complete => "true"
				)
		  flash[:success] = "New General Activity Created!"
		end

		render_wizard @activity		
	end

	private
	
	def finish_wizard_path
	  '/dashboard/offerings_index'
	end
end
