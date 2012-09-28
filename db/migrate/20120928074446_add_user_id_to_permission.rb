class AddUserIdToPermission < ActiveRecord::Migration
  def change
    change_table :permissions do |t|
      t.integer :user_id
    end
  end
end
