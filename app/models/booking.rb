class Booking < ApplicationRecord
  
  # Associations
  belongs_to :user
  belongs_to :package
  
  # Valdations
  validates :contact, presence: true, length: { minimum: 6, maximum: 10}
  
end
