class AddRoleIdToUsers < ActiveRecord::Migration
  def change
    add_column :paozhoumo_user_users, :role_id, :integer
  end
end