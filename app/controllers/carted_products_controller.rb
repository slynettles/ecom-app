class CartedProductsController < ApplicationController
	def index
		@order = Order.find_by(:user_id => current_user.id, :status => "cart")
		@carted_products = @order.carted_products
	end

	def create
		if Order.find_by(:user_id => current_user.id, :status => "cart")
			@order = Order.find_by(:user_id => current_user.id, :status => "cart")
		else
			@order = Order.create(:status => "cart", :user_id => current_user.id)
		end
		
		CartedProduct.create(params[:carted_product].merge({:order_id => @order.id}))
		flash[:danger] = "Added to cart."
		redirect_to "/"
	end
end
