class Admin::CategoriesController < ApplicationController

	def index
		@categories = Category.all

	end


	def edit
		@category = Category.find(params[:id])
		
	end

	def update
		@category = Category.find(params[:id])
		@category.update_attributes(category_params)
		flash[:success] = 'Updated successfully'
		redirect_to admin_categories_path

	end


	def new
		@category = Category.new
	end

	def create
		@category = Category.new(category_params)

		@category.save
		flash[:success] = 'Created successfully'
		redirect_to admin_categories_path
	end


	def show
		@category = Category.find(params[:id])
	end


	private

	def category_params
		params.require(:category).permit(:name)
	end

end
