module ApplicationHelper
  def tab_class_name(name)
    if (controller.action_name == "contact" && name == "contact") || (controller.action_name != "contact" && name != "contact")
      return "selected"
    else
      return "unselected"
    end
  end
end
