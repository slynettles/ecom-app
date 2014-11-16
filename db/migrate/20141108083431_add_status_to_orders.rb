class AddStatusToOrders < ActiveRecord::Migration
  def change
    add_column :create_orders, :status, :string
  end
end
