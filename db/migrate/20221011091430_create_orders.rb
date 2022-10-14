class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.decimal :totalPrice
      t.string :orderItems, array: true

      t.timestamps
    end
  end
end
