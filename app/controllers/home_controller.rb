class HomeController < ApplicationController
  def index
    @home_view = true
    @page_title = "Home"
  end

  def about
    @page_title = "About Me"
    @page_heading = "About Me"
  end

  def contact
    @page_title = "Contact Me"
    @page_heading = "Contact Me"
    @message = Message.new
  end

end
