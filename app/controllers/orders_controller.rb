class OrdersController < ApplicationController

	def create
		product = Product.find(params[:order][:product_id])
		total_price = product.price * params[:order][:quantity].to_i
		@order = current_user.orders.create(params[:order].merge({:total => total_price}))
		#Order.create(params[:order])
		#Order.create(params[:order].merge({:user_id => current_user.id}))
	end

	def destroy
	end

	def edit
	end

	def update
	end

	def new
		@create_order = Order.new
	end

	def show
	end

	def index
	end

end
