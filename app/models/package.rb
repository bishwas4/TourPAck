class Package < ApplicationRecord
 has_many :bookings
 has_one_attached :avatar

end
