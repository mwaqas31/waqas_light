class MainController < ApplicationController
	before_filter :required_login, :only => [:admin]

	def index
		@products =Product.all
		@categories = Category.all
	end

end
