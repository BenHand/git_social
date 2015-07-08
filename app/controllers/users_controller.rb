class UsersController < ApplicationController

  def test_show

    render json: current_user
  end

end
