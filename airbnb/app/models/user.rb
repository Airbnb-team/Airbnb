class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         has_many :rooms
         has_many :reservations
         has_many :messages
         has_many :photos
         has_many :favarites
         has_many :reviews
end
