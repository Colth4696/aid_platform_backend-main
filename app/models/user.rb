class User < ApplicationRecord
  has_secure_password
  has_one_attached :image
  has_many :requests, dependent: :destroy
  has_and_belongs_to_many :chatrooms, dependent: :destroy
  has_many :volunteers, inverse_of => :users

  validates :email, presence: true
  validates :email, uniqueness: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
