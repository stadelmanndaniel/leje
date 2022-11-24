module ApplicationHelper
  def calculate_avg_rating(offer)
    "-" if offer.bookings.empty?
    rating = []
    offer.bookings.each { |booking| rating << booking.rating if booking.rating}
    avg = rating.inject(:+).to_f / offer.bookings.count
    return avg
  end
end
