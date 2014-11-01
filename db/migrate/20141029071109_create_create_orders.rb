class CreateCreateOrders < ActiveRecord::Migration
  def change
    create_table :create_orders do |t|
    	t.integer :user_id
    	t.integer :product_id
    	t.integer :quantity
    	t.decimal :total

      t.timestamps
    end
  end
end
