class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings.includes(:package)
    

  end

  def show
    
  end

  def new 
    @packages = Package.all
    @booking = Booking.new
  end

  def create
    @booking = current_user.bookings.build(booking_params)

    respond_to do |format|
      if @booking.save
        format.html{redirect_to bookings_path, notice: 'Your Booking is made.'}
        format.json{render :show, status: :created, location: @package}
      else
        format.html{render :new}
        form.json {render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  def booking_params
    params.require(:booking).permit(:package_id, :booked_for, :no_of_person)
  end

end
