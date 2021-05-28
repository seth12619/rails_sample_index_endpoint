class GuestRecord < ApplicationRecord
  has_many :guest_reservations
end
