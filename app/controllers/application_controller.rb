class ApplicationController < ActionController::Base
  include Rack::Recaptcha::Helpers
  
  protect_from_forgery
end
