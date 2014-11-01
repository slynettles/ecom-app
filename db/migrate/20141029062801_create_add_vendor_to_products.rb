class CreateAddVendorToProducts < ActiveRecord::Migration
  def change
    create_table :add_vendor_to_products do |t|
    	t.string :vendor
      t.timestamps
    end
  end
end
