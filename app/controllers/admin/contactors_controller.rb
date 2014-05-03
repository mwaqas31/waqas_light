class Admin::ContactorsController < ApplicationController
  def index
  	@contactors = Contactor.all
  end
end
