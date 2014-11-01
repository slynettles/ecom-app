class CreateAddVendorIdToProducts < ActiveRecord::Migration
  def change
    create_table :add_vendor_id_to_products do |t|
    	add_column :products, :vendor_id, :integer

      t.timestamps
    end
  end
end
