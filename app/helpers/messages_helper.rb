module MessagesHelper
  def message_status(valid_email = @valid_email, valid_body = @valid_body)
    message_status = {}
    message_status[:is_success] = valid_email && valid_body
    message_status[:error_fields] = []
    if valid_email && valid_body
      message_status[:flash_message] = "The message has been successfully sent"
    elsif valid_email && !valid_body
      message_status[:flash_message] = "Please provide a message"
      message_status[:error_fields] = ["#message_body"]
    elsif !valid_email && valid_body
      message_status[:flash_message] = "Please provide a valid email"
      message_status[:error_fields] = ["#message_email"]
    else
      message_status[:flash_message] = "Please provide a valid email and message"
      message_status[:error_fields] = ["#message_email", "#message_body"]
    end

    return message_status
  end

  def message_flash(message, success = true)
    content_tag 'div', message, :class => (success ? 'notice_flash flash' : 'error_flash flash')
  end
end
