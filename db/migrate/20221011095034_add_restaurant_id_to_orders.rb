class AddRestaurantIdToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :restaurant_id, :integer
  end
end
