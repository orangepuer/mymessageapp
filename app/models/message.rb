class Message < ApplicationRecord
  belongs_to :user

  validates :body, presence: true
  validates :body, length: { minimum: 5, maximum: 60 }
end
