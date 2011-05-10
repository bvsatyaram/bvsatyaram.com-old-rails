class HomeController < ApplicationController
  def index
    @home_view = true
    @page_title = "Home"
  end

  def about
    @page_title = "About Me"
  end

  def contact
    @page_title = "Contact Me"
    @page_heading = "Contact Me"
    @message = Message.new
  end

  def download
    file_name = params[:file_name]
    if file_name && file_name == "pomodoro.jar"
      send_file "#{Rails.root}/public/downloads/pomodomo.jar", :file_name => "pomodoro.jar"
    else
      raise "Invalid file"
    end
  end

end
