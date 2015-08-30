class DashboardController < ApplicationController
	before_filter :authenticate_merchant!
	def main
		@merchant = current_merchant
	end
end
