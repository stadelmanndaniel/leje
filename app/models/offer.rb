class Offer < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :user
  has_many_attached :photos
  # validate :photo_present, , default_url: "avatar.png"
  validates :name, :description, :price, :address, presence: true
  before_create :attach_default

  include PgSearch::Model

  pg_search_scope :global_search,
    against: [:name, :description, :category],
    associated_against: {
      user: [:first_name]
    },
    using: {
      tsearch: { prefix: true }
    }

  def unavailable_dates
    bookings.pluck(:start_date, :end_date).map do |range|
      { from: range[0], to: range[1] }
    end
  end


  def attach_default
    photos.attach(io: File.open(File.join(Rails.root,'app/assets/images/no-picture.jpg')), filename: 'no-picture.jpg') if photos.empty?
  end

  # Undo private method and the validation to not allow submitions without pictures
  # private
  #   def photo_present
  #     errors.add(:photos, "you must attach at least a picture") if self.photos.empty?
  #   end
end
