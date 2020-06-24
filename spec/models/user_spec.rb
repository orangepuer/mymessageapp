require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { create(:user) }

  it { should have_many(:messages).dependent(:destroy) }

  it { should validate_presence_of :name }
  it { should validate_presence_of :surname }
  it { should validate_presence_of :patronymic }

  it { should validate_length_of(:name).is_at_least(5) }
  it { should validate_length_of(:surname).is_at_least(5) }
  it { should validate_length_of(:patronymic).is_at_least(5) }
  it { should validate_length_of(:name).is_at_most(20) }
  it { should validate_length_of(:surname).is_at_most(20) }
  it { should validate_length_of(:patronymic).is_at_most(20) }
end
