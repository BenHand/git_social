class CreateGithubProfiles < ActiveRecord::Migration
  def change
    create_table :github_profiles do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.string :company, null: false, default: ""
      t.boolean :hireable, null: false, default: false
      t.integer :public_repos, null: false, default: 0
      t.integer :public_gists, null: false, default: 0
      t.integer :followers, null: false, default: 0
      t.integer :following, null: false, default: 0
      t.string :created, null: false, default: ""

      t.timestamps null: false
    end
  end
end
