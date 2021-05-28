class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
    @booking = Booking.new(room_id: params[:room_id])
  end

  def create
    @booking = current_user.bookings.build(booking_params)
    if @booking.save
      redirect_to root_url, notice: 'Booked successfully'
    end
  end

  private
    def booking_params
      params.require(:booking).permit(:start_date, :end_date, :user_id, :room_id)
    end
end
