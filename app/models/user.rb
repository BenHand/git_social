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
      # TODO: remove hackyness of email hack to account for possible private emails on github
      user.email      = auth_email(auth.info.email)
      user.password   = Devise.friendly_token[0,20]
      user.name       = auth.info.fetch(:name, "")
      user.image      = auth.info.fetch(:image, "https://38.media.tumblr.com/avatar_951b22788b15_128.png")
      user.github_url = auth.info.urls.fetch(:GitHub, "")
      user.blog       = auth.info.urls.fetch(:Blog, "")
      user.location   = auth.extra.raw_info.fetch(:location, "")
      user.bio        = auth.extra.raw_info.fetch(:bio, "")
      user.save!
      user.create_github_profile(auth)
    end
  end

  def auth_email(auth)
    if auth.length > 5
      auth
    else
      "changeme#{rand(1..1000000)}@example.com"
    end
  end

  def create_github_profile(auth)
    @auth = auth
    GithubProfile.create({
        user_id:      id,
        hireable:     auth_raw_info(:hireable),
        public_repos: auth_raw_info(:public_repos),
        public_gists: auth_raw_info(:public_gists),
        followers:    auth_raw_info(:followers),
        following:    auth_raw_info(:following),
        created:      auth_raw_info(:created_at),
        access_token: auth[:credentials][:token] })
  end

  def auth_raw_info(value)
    @auth[:extra][:raw_info].fetch(value, "")
  end


  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.github_data"] && session["devise.github_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end

end
