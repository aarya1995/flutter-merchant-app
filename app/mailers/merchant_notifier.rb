class MerchantNotifier < ActionMailer::Base
  default from: "from@example.com"

  def send_signup_email(merchant)
  	@merchant = merchant
  	mail(to: "@merchant.email", subject: "Thanks for applying to be a Flutter Merchant")
  end
end
