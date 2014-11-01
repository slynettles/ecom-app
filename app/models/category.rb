class Category < ActiveRecord::Base
	has_many :categorized_product
  	has_many :products, :through => :categorized_products	
end
