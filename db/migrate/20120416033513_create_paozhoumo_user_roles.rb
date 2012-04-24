class CreatePaozhoumoUserRoles < ActiveRecord::Migration
  def change
    create_table :paozhoumo_user_roles do |t|
      t.string :name

      t.timestamps
    end
  end
end
