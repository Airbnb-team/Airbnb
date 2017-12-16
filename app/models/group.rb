class Group < ApplicationRecord
  has_many :user_groups
  has_many :messages
  has_many :users, through: :user_groups
  belongs_to :room
  # accepts_nested_attributes_for :user_groups
end
