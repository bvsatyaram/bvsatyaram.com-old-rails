class MessagesController < ApplicationController
  def create
    @message = Message.new(params[:message])
    @valid_email = ValidateEmail.validate(@message.email)
    @valid_body = !@message.body.blank?
    if @valid_email && @valid_body
      @message.save!
      @new_message = Message.new
    end
  end
end
