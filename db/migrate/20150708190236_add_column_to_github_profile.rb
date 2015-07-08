class AddColumnToGithubProfile < ActiveRecord::Migration
  def change
    add_column :github_profiles, :access_token, :string
  end
end
