require 'rails_helper'

RSpec.describe Message, type: :model do
  it { should belong_to :user }

  it { should validate_presence_of :body }

  it { should validate_length_of(:body).is_at_least(5) }
  it { should validate_length_of(:body).is_at_most(60) }
end
