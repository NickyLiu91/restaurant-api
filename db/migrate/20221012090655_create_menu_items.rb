class CreateMenuItems < ActiveRecord::Migration[5.2]
  def change
    create_table :menu_items do |t|
      t.string :name
      t.string :price
      t.string :image
      t.string :restaurant_id

      t.timestamps
    end
  end
end
