class ProfilesController < ApplicationController
  def index
    @offers = Offer.where(user: current_user)
    @bookings = Booking.where(user: current_user)
    @bookings_past = Booking.past_booking.where(user: current_user)
    @bookings_current = Booking.current_booking.where(user: current_user)
    @current_user = current_user
  end
end
