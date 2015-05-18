class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(identification_number: params[:identification_number])
    if @user && @user.authenticate(params[:password])
      set_session_user(@user.id)
      redirect_to "/"
    else
      flash[:login_failed] = "User or password incorrect"
      redirect_to "/login"
    end
  end

end
