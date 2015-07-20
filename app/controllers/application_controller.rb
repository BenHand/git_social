class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    profile_main_path(current_user.id)
  end

  def search_results
    @forum_results = Forum.where("lower(topic) LIKE ?", "%#{params[:search].downcase}%")
    @post_results = Post.where("lower(title) LIKE ? OR lower(body) LIKE ?",
                              "%#{params[:search].downcase}%", "%#{params[:search].downcase}%")
    @user_results = User.where("lower(name) LIKE ?", "%#{params[:search].downcase}%" )
    render 'shared/search_results'
  end

  def search_page
    render 'shared/search_page'
  end

  def split_url(url)
    if url.length > 10
      url.split('/')[-1]
    else
      url
    end
  end

  def commit_url(repo, url)
    "https://github.com/#{repo}/commit/#{split_url(url)}"
  end

  def to_url(path)
    "http://www.#{path}"
  end
helper_method :split_url, :commit_url, :to_url

end
