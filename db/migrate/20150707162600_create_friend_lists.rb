class CreateFriendLists < ActiveRecord::Migration
  def change
    create_table :friend_lists do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.integer :friend_id

      t.timestamps null: false
    end
  end
end
