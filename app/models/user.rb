class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :messages, dependent: :destroy

  validates :name, :surname, :patronymic, presence: true, length: { minimum: 5, maximum: 20 }

  def full_name
    "#{surname.capitalize} #{name.capitalize} #{patronymic.capitalize}"
  end
end
