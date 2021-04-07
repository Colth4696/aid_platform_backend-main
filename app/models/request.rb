class Request < ApplicationRecord
  belongs_to :user
  has_many :volunteers
  has_one :status
end
