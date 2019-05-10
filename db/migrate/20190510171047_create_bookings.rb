class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.datetime :booked_for
      t.integer  :no_of_person
      t.timestamps
    end
  end
end
