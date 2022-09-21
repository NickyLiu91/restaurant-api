class AddAccountToRestaurants < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :account_id, :integer
  end
end
