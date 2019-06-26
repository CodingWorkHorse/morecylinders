class ApplicationController < ActionController::Base
  helper_method :current_user
  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    else
      @current_user = nil
    end
  end

      def require_editor 
  redirect_to '/' unless current_user.editor? 
end
 def require_admin
   redirect_to '/' unless current_user.admin?
 end

  def require_driver
   redirect_to '/' unless current_user.driver?
 end
end