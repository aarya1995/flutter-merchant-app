class MerchantNotifier < ActionMailer::Base
  include SendGrid
  
  default from: "from@example.com"

  def send_signup_email(merchant)
  	@merchant = merchant
  	mail(:to => @merchant.email,
    :subject => 'Thanks for signing up to be a Flutter Merchant!')
  end
end
