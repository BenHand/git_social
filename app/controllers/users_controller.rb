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
    @user = User.find(params[:id])
    gh_profile = @user.github_profiles[0]
    client = Octokit::Client.new(access_token: gh_profile[:access_token])
    @events = []
    client.user_events(split_url(@user.github_url))
          .take(12).each do |event|
      if event[:type] == "PushEvent"
        @events << {
                     type: event[:type],
                     repo: event[:repo][:name],
                  message: event[:payload][:commits][0][:message] || "No Message",
                      url: event[:payload][:commits][0][:url],
                   author: event[:payload][:commits][0][:author][:name],
                     time: event[:created_at]
                    }
      end
    end
  end

private

  def user_params
    params.require("/users/profile/update").permit(:name, :email, :bio, :blog, :location,
                         :facebook_url, :twitter_url, :linkedin_url)
  end

end
