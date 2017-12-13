class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :rooms
  has_many :reservations
  has_many :messages
  has_many :photos
  has_many :favarites
  has_many :reviews
  has_many :user_groups
  has_many :groups, through: :user_groups
  # accepts_nested_attributes_for :user_groups


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, omniauth_providers: [:facebook]

   # userがいなければfacebookアカウントでuserを作成するメソッド
   def self.from_omniauth(auth)
     user = User.where(email: auth.info.email).first
     if user
       return user
     else
       where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
         # userモデルが持っているカラムをそれぞれ定義していく
         user.email = auth.info.email
         user.password = Devise.friendly_token[0,20]
         user.name = auth.info.name
         user.image = auth.info.image
         user.uid = auth.uid
         user.provider = auth.provider

         # If you are using confirmable and the provider(s) you use validate emails,
         # uncomment the line below to skip the confirmation emails.
        #  user.skip_confirmation!
       end
     end
   end
 end
