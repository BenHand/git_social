class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :blog, :string, null: false, default: ""
    add_column :users, :location, :string, default: ""
    add_column :users, :bio, :text, null: false, default: ""
  end
end
