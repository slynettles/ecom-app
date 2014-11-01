class OrdersController < ApplicationController

	def destroy
	end

	def edit
	end

	def update
	@order =Order.find(params[:id])
	@order.update(:status => "purchased", :total => @order.total_price)


	end

	def new
		@create_order = Order.new
	end

	def show
	end

	def index
	end

end
