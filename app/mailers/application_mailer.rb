class ApplicationMailer < ActionMailer::Base
  default :to => "bvsatyaram@gmail.com",
    :from => "noreply@bvsatyaram.com"

  def message_notification(message)
    @message = message
    mail(:reply_to => "#{@message.name} <#{@message.email}>",
      :subject => "[bvsatyaram.com] Message from #{@message.name} <#{@message.email}>")
  end
end
