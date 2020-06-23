class MessagesController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def create
    @message = current_user.messages.new(message_params)
    helpers.flash_error_messages(@message) unless @message.save

    redirect_to root_path
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end
end
