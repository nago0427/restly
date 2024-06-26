class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         validates :nickname, presence: true, length: { maximum: 6 }
         validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
         validates :password, presence: true, length: { minimum: 6 }, confirmation: true
end
