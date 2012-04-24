class CreatePaozhoumoUserAuthorizations < ActiveRecord::Migration
  def change
    create_table :paozhoumo_user_authorizations do |t|
      t.string :provider
      t.integer :user_id
      t.string :uid

      t.timestamps
    end
  end
end
