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

end
