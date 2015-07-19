class UsersController < ApplicationController

  def profile_main
    @user = User.find(params[:id])
    @github_profile = @user.github_profiles[0]
    client = Octokit::Client.new(access_token: @github_profile[:access_token])
    @repos = []
    client.repos.each do |repo|
      @repos << {
                name: repo.name,
         description: repo.description,
                 url: repo.html_url,
            language: repo.language,
             created: repo.created_at,
             updated: repo.pushed_at,
               stars: repo.stargazers_count,
               forks: repo.forks,
            watchers: repo.watchers }
    end
  end

  def edit_profile
    @users = User.find(current_user.id)
  end

  def update_profile
    user = User.find(current_user.id).update_attributes!(user_params)
    redirect_to profile_main_path(current_user.id)
  end

  def profile_activity

  end

private

  def user_params
    params.require("/users/profile/update").permit(:name, :email, :bio, :blog, :location,
                         :facebook_url, :twitter_url, :linkedin_url)
  end

end
