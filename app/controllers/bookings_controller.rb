class BookingsController < ApplicationController
  before_action :set_booking, only: %i[edit update]

  def create
    @offer = Offer.find(params[:offer_id])
    @booking = Booking.new(booking_params)
    @booking.offer = @offer
    @booking.user = current_user
    if @booking.save
      redirect_to @offer, notice: "Booking was successfully created."
    else
      render 'offers/show', status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @offer = Offer.find(@booking.offer_id)
    if @booking.update!(booking_params)
      redirect_to offer_path(@offer), notice: "Your review was successfully added."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :review, :rating)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
