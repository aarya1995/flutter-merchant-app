class MerchantApplicationsController < ApplicationController
  #before_action :set_merchant_application, only: [:show]

  # GET /merchant_applications/1
  # GET /merchant_applications/1.json
  def show
  end

  def thanks
  end

  # GET /merchant_applications/new
  def new
    @merchant_application = MerchantApplication.new
  end

  # POST /merchant_applications
  # POST /merchant_applications.json
  def create
    @merchant_application = MerchantApplication.new(merchant_application_params)
    # default set the application status to false to show it hasn't been approved yet
    @merchant_application.status = "false"
    respond_to do |format|
      if @merchant_application.save
        # deliver the signup email
        MerchantNotifier.send_signup_email(@merchant_application).deliver
        # redirect to thank you page
        format.html { redirect_to '/merchant_applications/thanks', notice: 'Merchant application was successfully created.' }
        format.json { render action: 'thanks', status: :created, location: '/merchant_applications/thanks' }
      else
        format.html { render action: 'new' } 
        format.json { render json: @merchant_application.errors, status: :unprocessable_entity } # maybe find substitute for this since errors shown client side
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_merchant_application
      @merchant_application = MerchantApplication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def merchant_application_params
      params.require(:merchant_application).permit(:name, :category, :description, :address, :email)
    end
end
