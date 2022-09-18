class UpdateAccountAttributeType < ActiveRecord::Migration[5.2]
  def change
    change_column :accounts, :phone, 'integer USING CAST(phone AS integer)'
  end
end
