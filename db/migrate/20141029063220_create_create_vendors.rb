class CreateCreateVendors < ActiveRecord::Migration
  def change
    create_table :create_vendors do |t|
    	t.string :name
    	t.string :email
    	t.string :vendor_id

      t.timestamps
    end
  end
end
