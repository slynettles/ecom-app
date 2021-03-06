class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :get_products

  def get_products
  	@products = Product.all 
  	@categories = Category.all
  end
end

def authenticate_admin!
		unless user_signed_in? && current_user.admin?
			flash[:warning] = "Access Denied"
			redirect_to '/'
		end
	end
