class BookingsController < ApplicationController
  def new
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
