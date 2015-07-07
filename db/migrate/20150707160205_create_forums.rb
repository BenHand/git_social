class CreateForums < ActiveRecord::Migration
  def change
    create_table :forums do |t|
      t.string :topic
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
