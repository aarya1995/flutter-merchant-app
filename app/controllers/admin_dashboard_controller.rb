class AdminDashboardController < ApplicationController
	before_filter :authenticate_admin!

	def main
		@merchants = Merchant.all
	end
	
	# method to allow admins to add new merchants
	def new_merchant
		@merchant = Merchant.new
	end
	
	# create method to build a merchant through the admin dashboard
	def create
		@merchant = Merchant.new(merchant_params)

	    respond_to do |format|
	      if @merchant.save
			# find the corresponding merchant application by email, and set its status
		    # to true so that it won't show up as an application anymore
		  	@MerchantApplication = MerchantApplication.find_by(email: params[:merchant][:email])
		  	@MerchantApplication.status = "true"
		  	@MerchantApplication.save! # important save
		    #----------------------------------------------------------------#

	        format.html { redirect_to '/admin_dashboard/main', notice: 'Merchant was successfully created.' }
	        format.json { render action: 'thanks', status: :created, location: '/admin_dashboard/main' }
	      else
	        format.html { render action: 'new_merchant' } 
	        format.json { render json: @merchant.errors, status: :unprocessable_entity } # maybe find substitute for this since errors shown client side
	      end
	    end
	end

	# page to review merchant applications
	def review
		@MerchantApps = MerchantApplication.all
	end

	# show details for the merchant
	def show
		@MerchantApplication = MerchantApplication.find(params[:id])
	end

	# Never trust parameters from the scary internet, only allow the white list through.
    def merchant_params
      params.require(:merchant).permit(:email, :password, :business_name, :category, :description, :address)
    end
end
