class User < ApplicationRecord
  has_many :room_users
  has_many :rooms, through: :room_users
  has_many :messages
  
  validates :name, presence: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
