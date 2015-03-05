class BookingsController < ApplicationController
  
  def new
    if @flight = Flight.find_by(id: params[:flight_id])
      @booking = Booking.new
      params[:passenger_count].to_i.times { |b| @booking.passengers.build }
    else
      flash[:danger] = 'Please search and select a flight first.'
      redirect_to root_url
    end
  end
  
  def create
    @booking = Booking.create(booking_params)
    redirect_to @booking
  end
  
  def show
    @booking = Booking.find_by(id: params[:id])
  end
  private
  
    def booking_params
      params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email] )  
    end
end
