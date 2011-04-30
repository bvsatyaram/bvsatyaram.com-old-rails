class ApplicationController < ActionController::Base
  include Rack::Recaptcha::Helpers

  before_filter :set_admin_view
  
  protect_from_forgery

  def set_admin_view
    @admin_view = user_signed_in? && current_user.is_admin?
  end
end
