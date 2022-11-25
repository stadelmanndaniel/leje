class Booking < ApplicationRecord
  belongs_to :offer
  belongs_to :user

  validates :rating, :review, presence: true, on: :update
  validates :start_date, :end_date, presence: true, availability: true, on: :create
  validate :end_date_after_start_date

  scope :current_booking, -> { where("start_date > ?", Time.now) }
  scope :past_booking, -> { where("start_date < ?", Time.now) }

  private

  def end_date_after_start_date
    return if end_date.blank? || start_date.blank?

    errors.add(:end_date, "must be after the start date") if end_date < start_date
  end
end
