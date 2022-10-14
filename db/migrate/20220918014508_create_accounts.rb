class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.string :rank
      t.integer :restaurant_id, optional: true

      t.timestamps
    end
  end
end
