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
    raise "Invalid request" unless file_name
    if file_name == "pomodoro.jar"
      send_file "#{Rails.root}/downloads/pomodomo.jar", :file_name => "pomodoro.jar"
    elsif current_user && file_name == "resume.pdf"
      send_file "#{Rails.root}/downloads/bvsatyaram.pdf", :file_name => "bvsatyaram.pdf"
    else
      raise "Invalid request"
    end
  end

end
