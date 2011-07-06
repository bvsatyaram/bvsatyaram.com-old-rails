class MessagesController < ApplicationController
  before_filter :authenticate_user!, :except => [:create]
  before_filter :check_admin_access, :except => [:create]

  def create
    @message = Message.new(params[:message])
    @valid_email = ValidateEmail.validate(@message.email)
    @valid_body = !@message.body.blank?
    @valid_captcha = recaptcha_valid?
    if @valid_email && @valid_body && @valid_captcha
      @message.save!
      ApplicationMailer.message_notification(@message).deliver
    end
  end

  def index
    @page_title = "Messages"
    @page_heading = "Messages"
    @messages = Message.all
  end
end
