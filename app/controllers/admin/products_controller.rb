class Admin::ProductsController < ApplicationController
	def index
		@products = Product.all

	end


	def edit
		@product = Product.find(params[:id])
	end

	def update
		@product = Product.find(params[:id])
		@product.update_attributes(product_params)
		flash[:success] = 'Updated successfully'
		redirect_to admin_products_path
	end


	def new
		@product = Product.new

	end
	
	def create
		@product = Product.new(product_params)
		if @product.save
			flash[:success] = 'added successfully'
		else
			flash[:error] = 'error'
		end
		redirect_to admin_products_path
	end

	def destroy
		@product = Product.find(params[:id])
		@product.destroy
		flash[:success] = 'Deleted successfully'
		redirect_to admin_products_path
	end


	def show
		@product = Product.find(params[:id])
	end


	private

	def product_params
		params.require(:product).permit(:name,:image,:description,:price,:category_id)
	end

end
