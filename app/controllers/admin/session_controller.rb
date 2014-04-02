class Admin::SessionController < ApplicationController
	def create
		us = User.find_by_email_and_password(params[:email]) rescue nil
		if us.blank?
			flash[:error] = 'No such user'
			render 'new' and return
		else
			session[:current_user_id] = us.id
			redirect_to admin_path and return
		end
	end
end
