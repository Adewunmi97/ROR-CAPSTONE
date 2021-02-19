class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         validates :username, presence: true, length: { minimum: 3 }
         validates :email, presence: true, length: { minimum: 10 }
         validates :password, presence: true

         has_many :opinions, foreign_key: 'author_id'
         has_many :followings, foreign_key: 'follower_id'
         has_many :followings, foreign_key: 'followed_id'
         has_many :followers, through: :followings, source: 'follower'
         has_many :followeds, through: :followings, source: 'followed'
end
