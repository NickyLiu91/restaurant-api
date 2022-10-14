class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :email, optional: true
      t.integer :phone, optional: true
      t.string :rank
      t.integer :restaurant_id, optional: true

      t.timestamps
    end
  end
end
