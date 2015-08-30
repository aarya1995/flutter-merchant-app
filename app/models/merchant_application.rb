class MerchantApplication < ActiveRecord::Base
	before_save { self.email = email.downcase }
	validates :name, :category, :description, :address, :email, :presence => true
end
