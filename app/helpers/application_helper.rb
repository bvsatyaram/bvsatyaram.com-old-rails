module ApplicationHelper
  def tab_class_name(name)
    if (name == :projects && controller.controller_name == "projects") ||
        (name == :about && controller.controller_name == "home" && controller.action_name == "about") ||
        (name == :contact && controller.controller_name == "home" && controller.action_name == "contact") ||
        (name == :home)
      return "selected"
    else
      return "unselected"
    end
  end
end
