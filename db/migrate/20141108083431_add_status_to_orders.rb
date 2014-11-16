class AddStatusToOrders < ActiveRecord::Migration
  def change
  	rename_table :create_orders, :orders
    add_column :orders, :status, :string
  end
end
