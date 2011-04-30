class ApplicationController < ActionController::Base
  include Rack::Recaptcha::Helpers

  before_filter :set_admin_view
  
  protect_from_forgery

  def set_admin_view
    @admin_view = user_signed_in? && current_user.is_admin?
  end

  def check_admin_access
    unless @admin_view
      flash[:error] = "You need to be an admin"
      redirect_to root_path
    end
  end
end
