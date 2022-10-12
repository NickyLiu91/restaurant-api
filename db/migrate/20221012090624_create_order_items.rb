class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_items do |t|
      t.string :name
      t.string :price
      t.string :order_id

      t.timestamps
    end
  end
end
