class MainController < ApplicationController
	before_filter :required_login, :only => [:admin]

	def index
		@products =Product.all
		@categories = Category.all
	end

	def contact_us

		if request.method == 'POST'
			UserMailer.contact_email(params[:email],params[:name],params[:message],params[:subject]).deliver
			flash[:succes] = 'We have received your meassage our team will shortly contact you.'
		end
	end

end
