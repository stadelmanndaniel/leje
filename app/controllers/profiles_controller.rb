class ProfilesController < ApplicationController
  def index
    @offers = Offer.where(user: current_user)
    @bookings = Booking.where(user: current_user)
  end
end
