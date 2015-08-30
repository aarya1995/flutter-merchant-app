class MerchantsController < ApplicationController

	before_filter :authenticate_merchant!
	
	def new
	end
	
	def create
		# admins only
	end
end
