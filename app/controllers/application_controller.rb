class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  helper_method :current_user, :required_login
  protect_from_forgery with: :exception

  private
  def current_user
  	if session[:current_user_id].present? && (session[:current_user_id] == User.first.id)
  		return User.first
  	else
  		return nil
  	end
  end

  def required_login
    redirect_to root_path and return if current_user.blank?
  end

  
  def current_cart
    session[:cart_id] ||= Cart.create!.id
    @current_cart ||= Cart.find(session[:cart_id])
  end
end
