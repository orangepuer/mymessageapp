module MessagesHelper
  def flash_error_messages(resource)
    flash['error_messages'] = []

    resource.errors.full_messages.each do |message|
      flash['error_messages'] << message
    end
  end
end
