class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def require_admin
    unless current_user.admin?
      flash[:error] = "You need to be admin"
      redirect_to root_path
    end
  end
end
