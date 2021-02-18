class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         validates :username, presence: true, length: { minimum: 3 }
         validates :email, presence: true, length: { minimum: 10 }
         validates :password, presence: true
end
