class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :check_role

  def get_session_user
    User.find_by(id: session[:user_id])
  end
  helper_method :get_session_user

  def set_session_user( user_id )
    session[:user_id] = user_id
  end
  helper_method :set_session_user

  def remove_session_user
    session.clear
  end
  helper_method :remove_session_user

  def is_logged_in?
    session.has_key? :user_id
  end
  helper_method :is_logged_in?

  private

  def check_role
    user = get_session_user
    if params[:controller] != 'sessions'
      redirect_to "/" unless user.roles.any? do |role|
        role.controller == params[:controller]
      end
    end
  end

end
