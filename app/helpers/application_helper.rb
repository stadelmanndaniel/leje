module ApplicationHelper
  def calculate_avg_rating(offer)
    "-" if offer.bookings.empty?
    rating = []
    offer.bookings.each { |booking| rating << booking.rating if booking.rating}
    avg = rating.inject(:+).to_f / rating.count
    avg = "-" if rating.empty?
    return avg
  end

  def calculate_nr_reviews(offer)
    "-" if offer.bookings.empty?
    rating = []
    offer.bookings.each { |booking| rating << booking.rating if booking.rating}
    nr = rating.count
    return nr
  end
end
