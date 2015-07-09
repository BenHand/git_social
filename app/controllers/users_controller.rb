class UsersController < ApplicationController

  def profile_main
    @user = User.find(params[:id])
  end

end
