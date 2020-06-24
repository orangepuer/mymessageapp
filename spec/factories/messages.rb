FactoryBot.define do
  factory :message do
    body { "MessageBody" }
    user
  end

  factory :invalid_message, class: "Message" do
    body { nil }
  end
end
