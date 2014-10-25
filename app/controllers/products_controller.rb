class ProductsController < ApplicationController

	def index
		@products = Product.all 
		@products = Product.where('price <= ?', 20) if params[:id] == "discount"
	end

	def show
		@product = Product.find_by(:id => params[:id])
	end

	def new
		@product = Product.new
	end

	def create
		product = Product.create(params[:product])
		options = params[:product][:options].split(",")
		options.each do |option|
			product.product_options.create(:name => option)
		end
		flash[:success] = "Product successfully added!"
		redirect_to "/products/#{product.id}"
	end

	def edit
	 	@product = Product.find_by(:id => params[:id])
	end

	def update
		@product = Product.find_by(:id => params[:id])
		@product.update(params[:product])
		flash[:success] = "Product updated."
		redirect_to "/products/#{params[:id]}"
	end

	def destroy
		@product = Product.find_by(:id => params[:id])
		@product.destroy
		flash[:danger] = "Product successfully deleted!"
		redirect_to '/products'
	end
end 