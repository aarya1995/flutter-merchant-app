class MerchantApplication < ActiveRecord::Base
	validates :name, :category, :description, :address, :email, :presence => true
end
