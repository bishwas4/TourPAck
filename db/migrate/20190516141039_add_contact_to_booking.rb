class AddContactToBooking < ActiveRecord::Migration[5.2]
  def change
      add_column :bookings, :contact, :number unless column_exists?(:bookings, :contact)
  end

  
end



    