class AddReferencesToBookings < ActiveRecord::Migration[5.2]
  def change
    add_reference :bookings, :user
    add_reference :bookings, :package
  end
end
