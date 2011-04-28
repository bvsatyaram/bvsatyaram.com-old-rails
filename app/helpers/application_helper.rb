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
end
