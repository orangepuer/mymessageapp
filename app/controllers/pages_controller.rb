class PagesController < ApplicationController
  def home
    @messages = Message.includes(:user).recent
  end
end
