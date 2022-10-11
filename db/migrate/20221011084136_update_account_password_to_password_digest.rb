class UpdateAccountPasswordToPasswordDigest < ActiveRecord::Migration[5.2]
  def change
    rename_column :accounts, :password, :password_digest
  end
end
