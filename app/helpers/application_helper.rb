module ApplicationHelper
  include Rack::Recaptcha::Helpers

  def tab_class_name(name)
    if (name == :projects && controller.controller_name == "projects") ||
        (name == :about && controller.controller_name == "home" && controller.action_name == "about") ||
        (name == :contact && controller.controller_name == "home" && controller.action_name == "contact")
      return "selected"
    elsif (name == :home && controller.controller_name == "home" && !["about", "contact"].include?(controller.action_name))
      return "selected"
    else
      return "unselected"
    end
  end


  # Renders the flash message with appropriate styles, depending on whether it
  # is a notice message or an error. It is assumed that the notice and error
  # messages are mutually exclusive and only one of them will be set/displayed
  # in any page.
  def show_flash
    if flash[:notice]
      flash_class = "notice"
      flash_msg = flash[:notice]
    elsif flash[:error]
      flash_class = "error"
      flash_msg = flash[:error]
    elsif flash[:warning]
      flash_class = "warning"
      flash_msg = flash[:warning]
    end

    content_tag :div, :id => "flash_container",
      :class => "clearfix",
      :style => flash_class.nil? ? 'display:none' : '' do
      content_tag :span, flash_msg , :class => "flash_msg #{flash_class}"
    end
  end
end
