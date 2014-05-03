class MainController < ApplicationController
	before_filter :required_login, :only => [:admin]

	def index
		if params[:category].present?
			@products = Product.where(id: params[:category])
		end
		@products =Product.all if @products.blank?
		@categories = Category.all
	end

	def contact_us

		if request.method == 'POST'
			Contactor.create(email: params[:email],name: params[:name],
				message: params[:message],subject: params[:subject])
			UserMailer.contact_email(params[:email],params[:name],params[:message],params[:subject]).deliver
			flash[:success] = 'We have received your meassage our team will shortly contact you.'
		end
	end

end
