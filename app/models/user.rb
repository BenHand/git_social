class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  devise :omniauthable, :omniauth_providers => [:github]
  has_many :friend_lists
  has_many :friend_requests
  has_many :posts
  has_many :forums
  has_many :comments
  has_many :github_profiles

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email || auth.extra.raw_info.email ||
                   "changeme#{Faker::Number.number(6)}@example.com"
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name
      user.image = auth.info.image
      user.github_url = auth.info.urls.GitHub
      user.blog = auth.info.urls.Blog || ""
      user.location = auth.extra.raw_info.location || ""
      user.bio = auth.extra.raw_info.bio || ""
      user.save!
      user.create_github_profile(auth)
    end
  end

  def create_github_profile(auth)
    GithubProfile.create({
      user_id:      id,
      hireable:     auth[:extra][:raw_info][:hireable],
      public_repos: auth[:extra][:raw_info][:public_repos]||"",
      public_gists: auth[:extra][:raw_info][:public_gists]||"",
      followers:    auth[:extra][:raw_info][:followers]||"",
      following:    auth[:extra][:raw_info][:following]||"",
      created:      auth[:extra][:raw_info][:created_at]||"",
      access_token: auth[:credentials][:token]})
  end


  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.github_data"] && session["devise.github_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end

end
