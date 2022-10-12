class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :orderitems do |t|
      t.string :name
      t.decimal :price
      t.string :order_id

      t.timestamps
    end
  end
end
