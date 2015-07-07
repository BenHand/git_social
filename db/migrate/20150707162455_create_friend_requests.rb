class CreateFriendRequests < ActiveRecord::Migration
  def change
    create_table :friend_requests do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.integer :target_id
      t.boolean :accepted

      t.timestamps null: false
    end
  end
end
