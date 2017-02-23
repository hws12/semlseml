class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def authorize_admin
   redirect_to root_path, alert: 'Access Denied' unless current_user.admin?
 end
end
