class Admin::ProductsController < ApplicationController
	def index
		@products = Product.all

	end


	def edit
		@product = Product.find(params[:id])
	end


	def new
		@product = Product.new

	end


	def show
		@product = Product.find(params[:id])
	end

end
