class MessagesController < ApplicationController
  def create
    @message = Message.new(params[:message])
    @valid_email = ValidateEmail.validate(@message.email)
    @valid_body = !@message.body.blank?
    @valid_captcha = recaptcha_valid?
    if @valid_email && @valid_body && @valid_captcha
      @message.save!
    end
  end
end
