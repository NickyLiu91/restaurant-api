class CreateMenuItems < ActiveRecord::Migration[5.2]
  def change
    create_table :menuitems do |t|
      t.string :name
      t.decimal :price
      t.string :image
      t.string :restaurant_id

      t.timestamps
    end
  end
end
