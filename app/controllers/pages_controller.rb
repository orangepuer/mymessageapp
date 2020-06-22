class PagesController < ApplicationController
  def home
    @messages = Message.includes(:user)
  end
end
