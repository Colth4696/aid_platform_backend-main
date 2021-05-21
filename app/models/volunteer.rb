class Volunteer < ApplicationRecord
  belongs_to :user
  belongs_to :request
  validate :on => :create do
    if request && request.volunteers.length >= 5
    errors.add(:request, "There can only be 5 volunteers per request.")
    end
    end
end
