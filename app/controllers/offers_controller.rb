class OffersController < ApplicationController
  before_action :set_offer, only: %i[show edit update destroy upload_pictures]

  # Add here the methods that you want a visitor to access without an account
  skip_before_action :authenticate_user!, only: %i[show index]

  def home
  end

  def index
    if params[:query].present?
      if params[:query]["category"]
        @search = params[:query]["category"]
        @hide = true
      else
        @search = params[:query]
      end
      @offers = Offer.global_search(@search)
    else
      @offers = Offer.all
    end
  end

  def show
    @booking = Booking.new
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    if @offer.save
      redirect_to @offer, notice: "Offer was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @offer.update(offer_params)
      redirect_to @offer, notice: "Offer was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def upload_pictures
  end

  def destroy
    @offer.destroy
    @offer.photos.purge
    redirect_to offers_url, notice: "Offer was successfully destroyed."
  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
  end

  def offer_params
    params.require(:offer).permit(:name, :description, :price, :address, :category, :user_id, photos: [])
  end
end
