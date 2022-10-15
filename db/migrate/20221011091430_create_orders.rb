class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.decimal :totalPrice
      t.json :orderItems, array: true
      t.string :location

      t.timestamps
    end
  end
end
