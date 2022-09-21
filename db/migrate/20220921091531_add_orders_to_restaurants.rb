class AddOrdersToRestaurants < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :orders, :array
  end
end
