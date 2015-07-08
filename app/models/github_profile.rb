class GithubProfile < ActiveRecord::Base
  belongs_to :user

  def self.create_github_profile(auth)
      GithubProfile.create({
        user_id: current_user.id,
        hireable: auth[:extra][:raw_info][:hireable],
        public_repos: auth[:extra][:raw_info][:public_repos]||"",
        public_gists: auth[:extra][:raw_info][:public_gists]||"",
        followers: auth[:extra][:raw_info][:followers]||"",
        following: auth[:extra][:raw_info][:following]||"",
        created: auth[:extra][:raw_info][:created_at]||"",
        access_token: auth[:credentials][:token]})
  end

end
