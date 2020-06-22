class MessagesController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def create
    current_user.messages.create(message_params)

    redirect_to root_path
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end
end
