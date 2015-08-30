class DashboardController < ApplicationController
	before_filter :authenticate_merchant!
	def main
	end
end
