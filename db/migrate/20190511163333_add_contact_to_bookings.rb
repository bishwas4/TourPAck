class AddContactToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :contact, :integer
  end
end
