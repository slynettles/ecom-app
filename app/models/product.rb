class Product < ActiveRecord::Base
has_many :product_options
belongs_to :user

attr_accessor :options

def options
end
end
