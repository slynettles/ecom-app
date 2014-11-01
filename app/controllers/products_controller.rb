class ProductsController < ApplicationController

	def index
		@products = Product.all 
		@products = @products.order(:price) if params[:order] == "price"
		@products = Product.where('price <= ?', 15) if params[:feature] == "discount"
		@products = Product.joins(:categories).where("categories.name = ?", params[:category]) if params[:category]
		@categories = Category.all
	end


	def show
		@order = Order.new

		if params[:id] == "random"
			@products = Product.all
			@product = products.sample
			@product = Product.order("RAND()").first if params[:id] == "random"
		else
			@product = Product.find_by(:id => params[:id])
	end
	end

	def new
		@product = Product.new
	end

	def create
		product = current_user.products.create(params[:product])
		flash[:success] = "Product successfully added!"
		redirect_to "/products/#{product.id}"
		options = params[:product][:options].split(",")
		options.each do |option|
		product.product_options.create(:name => option)
		end
		
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